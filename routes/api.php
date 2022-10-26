<?php

use App\Http\Controllers\CategorieController;
use App\Http\Controllers\OffreController;
use App\Http\Controllers\PaiementController;
use App\Http\Controllers\ProjetController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


//inscription

Route::post('inscription', [ UserController::class, 'register']);
Route::post('connexion', [ UserController::class, 'login']);

Route::group(
    ['mmiddleware' => ['auth:sanctum']],
    function () {

        
        //paramètres utilisateur
        Route::get('profil', [UserController::class, 'profile']);
        Route::get('deconnexion', [UserController::class, 'logout']);


        // Catégories

        Route::get('categories', [CategorieController::class, 'index']);
        Route::post('categories/creer-categorie', [CategorieController::class, 'create']);
        Route::get('categories/{id}', [CategorieController::class, 'show']);
        Route::put('categories/update/{id}', [CategorieController::class, 'update']);
        Route::delete('categories/delete/{id}', [CategorieController::class, 'destroy']);

        // projets  

        Route::get('projets', [ProjetController::class, 'index']);
        Route::post('projets/creer-projets', [ProjetController::class, 'create']);
        Route::get('projets/{id}', [ProjetController::class, 'show']);
        Route::put('projets/update/{id}', [ProjetController::class, 'update']);
        Route::delete('projets/delete/{id}', [ProjetController::class, 'destroy']);

        // Utilisateurs  

        Route::get('utilisateurs', [UserController::class, 'index']);
        Route::post('utilisateurs/creer-utilisateur', [UserController::class, 'create']);
        Route::get('utilisateurs/{id}', [UserController::class, 'show']);
        Route::put('utilisateurs/update/{id}', [UserController::class, 'update']);
        Route::delete('utilisateurs/delete/{id}', [UserController::class, 'destroy']);


        // offres  

        Route::get('offres', [OffreController::class, 'index']);
        Route::post('offres/creer-offre', [OffreController::class, 'create']);
        Route::get('offres/{id}', [OffreController::class, 'show']);
        Route::put('offres/update/{id}', [OffreController::class, 'update']);
        Route::delete('offres/delete/{id}', [OffreController::class, 'destroy']);




        // paiements  

        Route::get('paiements', [PaiementController::class, 'index']);
        Route::post('paiements/creer-paiement', [PaiementController::class, 'create']);
        Route::get('paiements/{id}', [PaiementController::class, 'show']);
        Route::put('paiements/update/{id}', [PaiementController::class, 'update']);
        Route::delete('paiements/delete/{id}', [PaiementController::class, 'destroy']);
    }
);
