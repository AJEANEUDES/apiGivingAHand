<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProjetFormRequest;
use App\Models\Projet;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ProjetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return $projet = Projet::with("categorie")->get();
        return  $projet = Projet::with("user")->get();

        return response()->json(
            [
                "status" => 1,
                "message" => "Liste des Projets",
                "data" => $projet
            ],
            200
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(ProjetFormRequest $request)
    {

        $data = $request->validated();

        $request->validate(
            [
                'categorie_id' => "required",
                'user_id' => "required",
                'nomProjet' => "required",
                'description' => "required",
                'image' => "required",
                'video' => "required",
                'lien_projet' => "required",
                'ressource_financiaire' => "required",
                'ressource_humaine' => "required",
                'ressource_materielle' => "required",
                'estimation_ressource_materielle' => "required",
                'validate' => "nullable",
                'delai' => "required",
                'coordonnees' => "required",
            ]
        );

        //créer un projet
        $projet = new Projet();
        $projet->categorie_id = $data['categorie_id'];
        $projet->user_id = $data['user_id'];
        $projet->nomProjet = $data['nomProjet'];
        $projet->description = $data['description'];

        if ($request->hasfile('image')) {

            $destination = 'telechargements/projet/image/' . $projet->image;
            if (File::exists($destination)) {
                File::delete($destination);
            }

            $fichier = $request->file('image');
            $nomfichier = time() . '.' . $fichier->getClientOriginalExtension();
            $fichier->move('telechargements/projet/image/', $nomfichier);
            $projet->image = $nomfichier;
        }

        $projet->lien_projet = $data['lien_projet'];

        if ($request->hasfile('video')) {

            $destination = 'telechargements/projet/video/' . $projet->video;
            if (File::exists($destination)) {
                File::delete($destination);
            }

            $fichier = $request->file('video');
            $nomfichier = time() . '.' . $fichier->getClientOriginalExtension();
            $fichier->move('telechargements/projet/video/', $nomfichier);
            $projet->video = $nomfichier;
        }

        $projet->lien_projet = $data['lien_projet'];
        $projet->ressource_financiaire = $data['ressource_financiaire'];
        $projet->ressource_humaine = $data['ressource_humaine'];
        $projet->ressource_materielle = $data['ressource_materielle'];
        $projet->estimation_ressource_materielle = $data['estimation_ressource_materielle'];
        $projet->validate =  $request->validate == true ? '1' : '0';
        $projet->delai = $data['delai'];
        $projet->coordonnees = $data['coordonnees'];
        // $projet->created_by = Auth::user()->id;
        $projet->save();


        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Projet créee avec succès"
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\ProjetFormRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProjetFormRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function show(Projet $projet, $id)
    {

        //Vérifie si une catégorie existe
        $projet = Projet::with("categorie")->get();
        $projet = Projet::with("user")->get();
        $projet = Projet::where("id", $id)->exists();
       
        if ($projet) {

            $info = Projet::find($id);
            return response()->json(
                [
                    "status" => 1,
                    "message" => "Projet trouvé",
                    "data" => $info

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Aucun Projet trouvée",

                ],
                404
            );
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function edit(Projet $projet)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\ProjetFormRequest  $request
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function update(ProjetFormRequest $request, Projet $projet, $id)
    {


        $data = $request->validated();

        $projet = Projet::where("id", $id)->exists();

        if ($projet) {

            $projet = Projet::find($id);
            $projet->categorie_id = $data['categorie_id'];
            $projet->user_id = $data['user_id'];
            $projet->nomProjet = $data['nomProjet'];
            $projet->description = $data['description'];

            if ($request->hasfile('image')) {

                $destination = 'telechargements/projet/image/' . $projet->image;
                if (File::exists($destination)) {
                    File::delete($destination);
                }

                $fichier = $request->file('image');
                $nomfichier = time() . '.' . $fichier->getClientOriginalExtension();
                $fichier->move('telechargements/projet/image/', $nomfichier);
                $projet->image = $nomfichier;
            }

            $projet->lien_projet = $data['lien_projet'];

            if ($request->hasfile('video')) {

                $destination = 'telechargements/projet/video/' . $projet->video;
                if (File::exists($destination)) {
                    File::delete($destination);
                }

                $fichier = $request->file('video');
                $nomfichier = time() . '.' . $fichier->getClientOriginalExtension();
                $fichier->move('telechargements/projet/video/', $nomfichier);
                $projet->video = $nomfichier;
            }

            $projet->lien_projet = $data['lien_projet'];
            $projet->ressource_financiaire = $data['ressource_financiaire'];
            $projet->ressource_humaine = $data['ressource_humaine'];
            $projet->ressource_materielle = $data['ressource_materielle'];
            $projet->estimation_ressource_materielle = $data['estimation_ressource_materielle'];
            $projet->validate =  $request->validate == true ? '1' : '0';
            $projet->delai = $data['delai'];
            $projet->coordonnees = $data['coordonnees'];
            $projet->save();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Mise à jour du projet réussie",

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
     * @param  \App\Models\Projet  $projet
     * @return \Illuminate\Http\Response
     */
    public function destroy(Projet $projet, $id)
    {

        if ($projet) {

            $projet = Projet::find($id);
            $projet = Projet::with("categorie")->get();
            $projet = Projet::with("user")->get();
            $projet->delete();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Suppression du projet réussie",

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Projet introuvable ",

                ],
                404
            );
        }
    }
}
