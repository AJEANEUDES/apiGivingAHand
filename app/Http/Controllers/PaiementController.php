<?php

namespace App\Http\Controllers;

use App\Http\Requests\PaiementFormRequest;
use App\Models\Paiement;

class PaiementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        
        return  $paiement = Paiement::with("projet")->get();
        return $paiement = Paiement::with("user")->get();

        return response()->json(
            [
                "status" => 1,
                "message" => "Liste des Paiements",
                "data" => $paiement
            ],
            200
        );

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(PaiementFormRequest $request)
    {
        $data = $request->validated();

        $request->validate(
            [
                'user_id' => "required",
                'projet_id' => "required",
                'montantPaye' => "required",
                'datePaiement' => "required",
                
            ]
        );

        //créer un paiement
        $paiement = new Paiement();
        $paiement->users_id = $data['users_id'];
        $paiement->projet_id = $data['projet_id'];
        $paiement->montantPaye = $data['montantPaye'];
        $paiement->datePaiement = $data['datePaiement'];
        $paiement->save();

         //Un renvoi de réponse personnalisé

         return response()->json([
            "status" => 1,
            "message" => "Paiement créee avec succès"
        ]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\PaiementFormRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PaiementFormRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Paiement  $paiement
     * @return \Illuminate\Http\Response
     */
    public function show(Paiement $paiement, $id)
    {


         //Vérifie si une catégorie existe
         $paiement = Paiement::with("projet")->get();
         $paiement = Paiement::with("user")->get();
         $paiement = Paiement::where("id", $id)->exists();
        
         if ($paiement) {
 
             $info = Paiement::find($id);
             return response()->json(
                 [
                     "status" => 1,
                     "message" => "Paiement trouvé",
                     "data" => $info
 
                 ],
                 200
             );
         } else {
             return response()->json(
                 [
                     "status" => 0,
                     "message" => "Aucun Paiement trouvée",
 
                 ],
                 404
             );
         }


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Paiement  $paiement
     * @return \Illuminate\Http\Response
     */
    public function edit(Paiement $paiement)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\PaiementFormRequest  $request
     * @param  \App\Models\Paiement  $paiement
     * @return \Illuminate\Http\Response
     */
    public function update(PaiementFormRequest $request, Paiement $paiement, $id)
    {
        $data = $request->validated();

        $paiement = Paiement::where("id", $id)->exists();

        if ($paiement) {

            $paiement = Paiement::find($id);
            $paiement->users_id = $data['user_id'];
            $paiement->projet_id = $data['projet_id'];
            $paiement->montantPaye = $data['montantPaye'];
            $paiement->datePaiement = $data['datePaiement'];

            $paiement->save();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Mise à jour du paiement réussie",

                ],
            );
        } else {
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
     * @param  \App\Models\Paiement  $paiement
     * @return \Illuminate\Http\Response
     */
    public function destroy(Paiement $paiement, $id)
    {
        if ($paiement) {

            $paiement = Paiement::find($id);
            $paiement = Paiement::with("projet")->get();
            $paiement = Paiement::with("user")->get();
            $paiement->delete();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Suppression du paiement réussie",

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "paiement introuvable ",

                ],
                404
            );
        }
    }
}
