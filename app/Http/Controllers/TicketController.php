<?php

namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;


class TicketController extends Controller
{
    //lister tous les tickets
    public function index()
    {
        return Ticket::all();
    }

    //lister les tickets pour un user en perticulier
    public function getTicketByUserId($id)
    {
        $tickets = Ticket::where('user_id', $id)->get();
        return $tickets;
    }

    // fonction qui permet d'inserer un ticket
    public function store(Request $request)
    {
        $ticket = new Ticket();
        $ticket->user_id = $request->user_id;
        // $ticket->horaire_id = $request->horaire_id;
        $ticket->class_id = $request->class_id;
        $ticket->zone_id = $request->zone_id;
        $ticket->num_tickets = $request->num_tickets;
        $ticket->amount = $request->amount;
        $ticket->qr_code = $request->qr_code;
        $ticket->date_exp = $request->date_exp;
        $ticket->save();
        return response()->json($ticket);
        // return response($ticket, Response::HTTP_CREATED);
        // return $ticket;

    }
    
}
