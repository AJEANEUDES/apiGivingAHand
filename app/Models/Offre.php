<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;


class Offre extends Model
{
    use HasFactory ,HasApiTokens;

    protected $table = 'offres';

    protected $fillable = [

        'donFin',
        'donMontant',
        'temps',
    ];
}
