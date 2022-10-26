<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Projet extends Model
{
    use HasFactory ,HasApiTokens;

    protected $table = 'projets';

    protected $fillable = [
        'categorie_id',
        'user_id',
        'nomProjet',
        'description',
        'image',
        'video',
        'lien_projet',
        'ressource_financiaire',
        'ressource_humaine',
        'ressource_materielle',
        'estimation_ressource_materielle',
        'validate',
        'delai',
        'coordonnees',

    ];

    public function categorie()
    {
        return $this->belongsTo(Categorie::class, 'categorie_id', 'id' );
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id' );
    }
}
