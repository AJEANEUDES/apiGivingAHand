<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Paiement extends Model
{
    use HasFactory ,HasApiTokens;

    protected $table = 'paiements';

    protected $fillable = [

        'user_id',
        'projet_id',
        'montantPaye',
        'datePaiement',
    ];

    public function projet()
    {
        return $this->belongsTo(Categorie::class, 'projet_id', 'id' );
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id' );
    }
}
