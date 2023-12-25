<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\Models\User;
// use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AuthController extends Controller
{
    public function register (RegisterRequest $request){
        $user=User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
        ]);

        return response($user,Response::HTTP_CREATED);
        
    }

    public function login(Request $request){
       if(!Auth::attempt($request->only('email', 'password'))){
          return \response([
            'error' => 'invalid Credentials'

          ],Response::HTTP_UNAUTHORIZED);
       }
         $user=Auth::user();
         $token=$user->createToken('token')->plainTextToken;

         return \response([
            'jwt'=>$token
         ]);


    }

   

}
