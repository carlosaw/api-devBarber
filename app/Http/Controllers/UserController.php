<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;

use App\Models\User;
use App\Models\UserAppointment;
use App\Models\UserFavorite;
use App\Models\Barber;
use App\Models\BarberServices;

class UserController extends Controller
{
    private $loggedUser;

    public function __construct() {
        $this->middleware('auth:api');
        $this->loggedUser = Auth::user();
    }
    // Pega as informações do usuário logado.
    public function read() {
        $array = ['error' => ''];

        $info = $this->loggedUser;
        $info['avatar'] = url('media/avatars/'.$info['avatar']);
        $array['data'] = $info;

        return $array;
    }

    // Adiciona e Remove favorito
    public function toggleFavorite(Request $request) {
        $array = ['error' => ''];

        $id_barber = $request->input('barber');

        $barber = Barber::find($id_barber);

        if($barber) {
            $fav = UserFavorite::select()
                ->where('id_user', $this->loggedUser->id)
                ->where('id_barber', $id_barber)
                ->first();

            if($fav) {
                // remover
                $fav->delete();
                $array['have'] = false;
            } else {
                // adicionar
                $newFav = new UserFavorite();
                $newFav->id_user = $this->loggedUser->id;
                $newFav->id_barber = $id_barber;
                $newFav->save();
                $array['have'] = true;
            }
        } else {
            $array['error'] = 'Barbeiro inexistente!';
        }

        return $array;
    }

    public function getFavorites() {
        $array = ['error' => '', 'list' => []];

        $favs = UserFavorite::select()
            ->where('id_user', $this->loggedUser->id)
        ->get();

        if($favs) {
            foreach($favs as $fav) {

                $barber = Barber::find($fav['id_barber']);
                $barber['avatar'] = url('media/avatars/'.$barber['avatar']);
                $array['list'][] = $barber;
            }
        }

        return $array;
    }

    public function getAppointments() {
        $array = ['error'=>'', 'list'=>[]];

        $apps = UserAppointment::select()
            ->where('id_user', $this->loggedUser->id)
            ->orderBy('ap_datetime', 'DESC')
        ->get();

        if($apps) {
            foreach($apps as $app) {

                $barber = Barber::find($app['id_barber']);
                $barber['avatar'] = url('media/avatars/'.$barber['avatar']);
                // Pega informações do serviço
                $service = BarberServices::find($app['id_service']);

                $array['list'][] = [
                    'id' => $app['id'],
                    'datetime' => $app['ap_datetime'],
                    'barber' => $barber,
                    'service' => $service
                ];
            }
        }

        return $array;
    }

    // Alterar informações do usuário
    public function update(Request $request) {
        $array = ['error' => ''];

        // Criando as regras
        $rules = [
            'name' => 'min:2',// Nome tem que ter duas letras
            'email' => 'email|unique:users',// Verifica se email já existe
            'password' => 'same:password_confirm',// Tem que ser o mesmo do confirm
            'password_confirm' => 'same:password'//Tem que ser o mesmo do password
        ];
        // Validar os dados
        $validator = Validator::make($request->all(), $rules);

        if($validator->fails()) {
            $array['error'] = Validator::messages();
            return $array;
        }

        $name = $request->input('name');
        $email = $request->input('email');
        $password = $request->input('password');
        $password_confirm = $request->input('password_confirm');

        $user = User::find($this->loggedUser->id);

        if($name) {
            $user->name = $name;
        }
        if($email) {
            $user->email = $email;
        }
        if($password) {
            $user->password = password_hash($password, PASSWORD_DEFAULT);
        }

        $user->save();

        return $array;
    }

    // Mudar avatar do usuário logado
    public function updateAvatar(Request $request) {
        $array = ['error' => ''];

        $rules = [
            'avatar' => 'required|image|mimes:png,jpg,jpeg'
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()) {
            $array['error'] = Validator::messages();
            return $array;
        }
        // Pega o arquivo de imagem
        $avatar = $request->file('avatar');
        // Pasta para guardar o arquivo de imagem
        $dest = public_path('/media/avatars');
        $avatarName = md5(time().rand(0,9999)).'.jpg';
        // Dimensiona a imagem
        $img = Image::make($avatar->getRealPath());
        $img->fit(300, 300)->save($dest.'/'.$avatarName);
        // Troca a imagem avatar do usuário logado
        $user = User::find($this->loggedUser->id);
        $user->avatar = $avatarName;
        $user->save();

        return $array;
    }
}