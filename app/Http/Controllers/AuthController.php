<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\Models\User;
// use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
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
            'error' => 'mot de passe ou email incorrect'

          ],Response::HTTP_UNAUTHORIZED);
       }
         $user=Auth::user();
         $token=$user->createToken('token')->plainTextToken;
        //  mettre le jwt token dans les cookies pendant 1 journee (60min x24)
         $cookie=cookie('jwt',$token,60*24);

         return \response([
            'jwt'=>$token
         ])->withCookie($cookie);


    }

    // pour avoir le user qui est connecte
    public function user(Request $request){
        return $request->user();
    }

    public function logout(){
        $cookie= Cookie::forget('jwt');
        return \response([
            'message'=>'success'
        ])->withCookie($cookie);
    }

   

}
