<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;
    protected $table = 'tickets';
    protected $fillable = [
        'user_id',
        'class_id',
        'zone_id',
        'num_tickets',
        'amount',
        'qr_code',
        'date_exp',
    ];
}
