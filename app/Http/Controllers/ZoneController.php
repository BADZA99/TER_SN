<?php

namespace App\Http\Controllers;

use App\Models\Zones;
use Illuminate\Http\Request;

class ZoneController extends Controller
{
    //fonction qui selectionne toutes les zones  et les classes en associant chaque name de classe a sa zone 
    public function index(){
        return Zones::all();
    }

    //fonction qui selectionne toutes les zones  et les classes en associant chaque name de classe a sa zone
    // public function index2()
    // {
    //     $zones = Zones::with('classes:name')->get();
    //     return response()->json($zones);
    // }
  
}
