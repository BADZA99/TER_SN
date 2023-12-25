<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\Models\User;
use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register (RegisterRequest $request){
        $user=User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
        ]);

        return response($user);
        
    }

    public function login(Request $request){
       if(Auth::attempt($request->only('email', 'password'))){
          return \response([
            'error' => 'invalid Credentials'

          ]);
       }
    }

   

}
