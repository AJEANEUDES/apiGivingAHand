<?php

namespace App\Http\Controllers;

use App\Models\Categorie;
use App\Http\Requests\CategorieFormRequest;

class CategorieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $categorie = Categorie::get();

        return response()->json(
            [
                "status" => 1,
                "message" => "Liste des Catégories",
                "data" => $categorie
            ],
            200
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(CategorieFormRequest $request)
    {
        
        $request->validate(
            [
                "nomCategorie" => "required",
            ]
        );

        //créer une catégorie
        $categorie = new Categorie();
        $categorie->nomCategorie = $request->nomCategorie;
        $categorie->save();

        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Catégorie créee avec succès"
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\CategorieFormRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategorieFormRequest $request)
    {
       

        $request->validate(
            [
                "nomCategorie" => "required",
            ]
        );

        //créer une catégorie
        $categorie = new Categorie();
        $categorie->nomCategorie = $request->nomCategorie;
        $categorie->save();

        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Catégorie créee avec succès"
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function show(Categorie $categorie, $id)
    {
        //Vérifie si une catégorie existe

        $categorie = Categorie::where("id", $id)->exists();

        if ($categorie) {
            
            $info = Categorie::find($id);
            return response()->json(
                [
                    "status" => 1,
                    "message" => "Catégorie trouvée",
                    "data" => $info

                ],
                200
            );
        }
        else
        {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Aucune Catégorie trouvée",

                ],
                404
            );
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function edit(Categorie $categorie)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\CategorieFormRequest  $request
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function update(CategorieFormRequest $request, Categorie $categorie, $id)
    {
        //

        $categorie = Categorie::where("id", $id)->exists();

        if ($categorie) {
            
            $info = Categorie::find($id);
            $info->nomCategorie = $request->nomCategorie;
            $info->save();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Mise à jour réussie",

                ],
            );
        }
        else
        {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Erreur de mise à jour ",

                ],
            );
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function destroy(Categorie $categorie, $id)
    {
        //
        
        $categorie = Categorie::where("id", $id)->exists();

        if ($categorie) {
            
            $categorie = Categorie::find($id);
            $categorie->delete();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Suppression de la catégorie réussie",

                ],200
            );
        }
        else
        {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Catégorie introuvable ",

                ], 404
            ); 
        }

    }
}
