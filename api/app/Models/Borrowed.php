<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Borrowed extends Model
{
    /** @use HasFactory<\Database\Factories\BorrowedFactory> */
    use HasFactory;


    protected $fillable = [
        'idPart',
        'idUser',
        'count',
    ];
}
