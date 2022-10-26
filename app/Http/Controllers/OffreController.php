<?php

namespace App\Http\Controllers;

use App\Http\Requests\OffreFormRequest;
use App\Models\Offre;

class OffreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // return Offre::all();

        $offre = Offre::get();

        return response()->json(
            [
                "status" => 1,
                "message" => "Liste des Offres",
                "data" => $offre
            ],
            200
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(OffreFormRequest $request)
    {

        $request->validate(
            [
                "donFin" => "required",
                "donMontant" => "required",
                "temps" => "required",
            ]
        );

        //créer une catégorie
        $offre = new Offre();
        $offre->donFin = $request->donFin;
        $offre->donMontant = $request->donMontant;
        $offre->temps = $request->temps;
        $offre->save();

        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Offre créee avec succès"
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\OffreFormRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OffreFormRequest $request)
    {
        
        $request->validate(
            [
                "donFin" => "required",
                "donMontant" => "required",
                "temps" => "required",
            ]
        );

        //créer une catégorie
        $offre = new Offre();
        $offre->donFin = $request->donFin;
        $offre->donMontant = $request->donMontant;
        $offre->temps = $request->temps;
        $offre->save();

        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Offre créee avec succès"
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Offre  $offre
     * @return \Illuminate\Http\Response
     */
    public function show(Offre $offre, $id)
    {
          //Vérifie si une catégorie existe

          $offre = Offre::where("id", $id)->exists();

          if ($offre) {
              
              $info = Offre::find($id);
              return response()->json(
                  [
                      "status" => 1,
                      "message" => "Offre trouvée",
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
                      "message" => "Aucune Offre trouvée",
  
                  ],
                  404
              );
          }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Offre  $offre
     * @return \Illuminate\Http\Response
     */
    public function edit(Offre $offre)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\OffreFormRequest  $request
     * @param  \App\Models\Offre  $offre
     * @return \Illuminate\Http\Response
     */
    public function update(OffreFormRequest $request, Offre $offre, $id)
    {
        $offre = Offre::where("id", $id)->exists();

        if ($offre) {
            
            $offre = Offre::find($id);
            $offre->donFin = $request->donFin;
            $offre->donMontant = $request->donMontant;
            $offre->temps = $request->temps;
            $offre->save();


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
     * @param  \App\Models\Offre  $offre
     * @return \Illuminate\Http\Response
     */
    public function destroy(Offre $offre, $id)
    {
        
        $offre = Offre::where("id", $id)->exists();

        if ($offre) {
            
            $offre = Offre::find($id);
            $offre->delete();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Suppression de l'offre  réussie",

                ],200
            );
        }
        else
        {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Offere introuvable ",

                ], 404
            ); 
        }


    }
}
