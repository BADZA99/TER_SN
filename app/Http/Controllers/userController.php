<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class userController extends Controller
{
    //fais une fonction qui recupere tous les utilisateurs
    public function index(){
        return User::all();
    }
}
