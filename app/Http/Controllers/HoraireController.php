<?php

namespace App\Http\Controllers;

use App\Models\Horaire;
use Illuminate\Http\Request;

class HoraireController extends Controller
{
    //lisster les horaires
    public function index()
    {
        return Horaire::all();
    }
}
