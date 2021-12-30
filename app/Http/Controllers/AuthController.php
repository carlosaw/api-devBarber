<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;// Autenticação
use Illuminate\Support\Facades\Validator;// Validação
use App\Models\User;// Model Usuario

class AuthController extends Controller
{
    public function __construct() {// Não precisa estar logado.
        $this->middleware('auth:api', ['except' => ['create', 'login', 'unauthorized']]);
    }
    public function create(Request $request) {
        $array = ['error' => ''];

        // Valida os campos do cadastro
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);
            
        if(!$validator->fails()) {// Se não falhou
            $name = $request->input('name');// Pega nome
            $email = $request->input('email');// Pega email
            $password = $request->input('password');// Pega senha

            // Verifica se email existe
            $emailExists = User::where('email', $email)->count();
            if($emailExists === 0) {// Se email não existir
                //Gera hash da senha
                $hash = password_hash($password, PASSWORD_DEFAULT);
                // Criar novo usuário
                $newUser = new User();// Novo usuário
                $newUser->name = $name;// Pega nome
                $newUser->email = $email;// Pega email
                $newUser->password = $hash;// Pega senha
                $newUser->save();// Salva usuário
                
                $token = Auth::attempt([// Logar o novo usuário
                    'email' => $email,
                    'password' => $password
                ]);

                if(!$token) {
                    $array['error'] = 'Ocorreu um erro!';
                    return $array;
                }

                $info = auth()->user();
                $info['avatar'] = url('media/avatars/'.$info['avatar']);
                $array['data'] = $info;
                $array['token'] = $token;

            } else {// Se email já existe
                $array['error'] = 'E-mail já cadastrado!';
                return $array;
            }

        } else {// Se deu erro
            $array['error'] = 'Dados incorretos!';// Msg de erro
            return $array;
        }

        return $array;
    }

    // Função fazer login
    public function login(Request $request) {
        $array['error'] = '';

        $email = $request->input('email');
        $password = $request->input('password');

        // Tentar fazer Login
        $token = Auth::attempt([
            'email' => $email,
            'password' => $password
        ]);
        // Se token deu problema
        if(!$token) {
            $array['error'] = 'Usuário e/ou senha errados!';
            return $array;
        }
        // Retorna as informações
        $info = auth()->user();
        $info['avatar'] = url('media/avatars/'.$info['avatar']);
        $array['data'] = $info;
        $array['token'] = $token;

        return $array;
    }

    // Logout
    public function logout() {
        Auth::logout();
        return ['error'=>''];
    }

    public function refresh() {
        $array = ['error'=>''];

        $token = Auth::refresh();

        $info = auth()->user();
        $info['avatar'] = url('media/avatars/'.$info['avatar']);
        $array['data'] = $info;
        $array['token'] = $token;

        return $array;
    }

    public function unauthorized() {
        return response()->json([
            'error' => 'Não autorizado!'
        ], 401);
    }
}

