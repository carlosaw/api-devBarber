<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\UserController;//Controller do usuário
use App\Http\Controllers\AuthController;// Autenticação do usuário
use App\Http\Controllers\BarberController;//Controller do barbeiro
use App\Models\Barber;

Route::get('/ping', function(){
    return ['pong'=>true];
});

// USUÁRIOS
/*----------------*/
// Rotas de Login/Logout
Route::get('/401', [AuthController::class, 'unauthorized'])->name('login');
//Route::get('/random', [BarberController::class, 'createRandom']);

Route::post('/auth/login', [AuthController::class, 'login']);
Route::post('/auth/logout', [AuthController::class, 'logout']);
//Atualiza o Token
Route::post('/auth/refresh', [AuthController::class, 'refresh']);
// Rotas de Cadastros - Cria usuário
Route::post('/user', [AuthController::class, 'create'])->name('create');

// Pegar informações do usuário logado
Route::get('/user', [UserController::class, 'read']);
// Alterar informações do usuário do usuário logado
Route::put('/user', [UserController::class, 'update']);
// Alterar avatar do usuário do usuário logado
Route::post('/user/avatar', [UserController::class, 'updateAvatar']);
// Pegar os barbeiros favoritos deste usuário
Route::get('/user/favorites', [UserController::class, 'getFavorites']);
// Adicionar um barbeiro favorito para este usuário
Route::post('/user/favorite', [UserController::class, 'toggleFavorite']);
// Pegar os agendamentos do usuário 
Route::get('/user/appointments', [UserController::class, 'getAppointments']);

/*---------------------*/
// BARBEIROS
//Pega lista de barbeiros
Route::get('/barbers', [BarberController::class, 'list']);
//Pega 'um' barbeiro específico
Route::get('/barber/{id}', [BarberController::class, 'one']);
// Pegar os agendamentos do barbeiro
Route::post('/barber/{id}/appointment', [BarberController::class, 'setAppointment']);
// Processo de buscar barbeiros
Route::get('/search', [BarberController::class, 'search']);