<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Zones extends Model
{
    protected $fillable = [
        'name',
        'description',
    ];
    use HasFactory;
}
