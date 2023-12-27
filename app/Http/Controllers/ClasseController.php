<?php

namespace App\Http\Controllers;

use App\Models\Classe;
use Illuminate\Http\Request;

class ClasseController extends Controller
{
    //fonction qui selectionne toutes lles classes
    public function index(){
        return Classe::all();
    }
}
