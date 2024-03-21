<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ClasseController;
use App\Http\Controllers\HoraireController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\userController;
use App\Http\Controllers\ZoneController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
// route pour l'authentification 
Route::post('register',[AuthController::class,'register']);
Route::post('login',[AuthController::class,'login']);

// le middleware check si le user est connecte ou non
Route::middleware('auth:sanctum')->group(function(){
    Route::get('user',[AuthController::class,'user']);
    Route::post('logout',[AuthController::class,'logout']);
});

// routes pour les classes
Route::get('classe',[ClasseController::class,'index']);

// routes pour les zones
Route::get('zone',[ZoneController::class,'index']);

// routes pour les horaires
Route::get('horaires',[HoraireController::class,'index']);

// routes pour les tickets
Route::get('tickets',[TicketController::class,'index']);
Route::get('tickets/{id}',[TicketController::class,'getTicketByUserId']);
Route::post('add-tickets',[TicketController::class,'store']);

// routes pour recuperer tous les users
Route::get('allusers',[userController::class,'index']);


