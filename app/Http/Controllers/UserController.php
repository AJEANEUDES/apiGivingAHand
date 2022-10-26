<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Http\Requests\UserFormRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function register(UserFormRequest $request)
    {
        //validation

        $request->validate(
            [
                "nom" => "required",
                "prenoms" => "required",
                "profession" => "required",
                "email" => "required|email|unique:users",
                "contact" => "required",
                "paysResidence" => "required",
                "nationalite" => "required",
                "password" => "required|confirmed",
            ]
        );


        //traitement des données
        $user = new User();
        $user->nom = $request->nom;
        $user->prenoms = $request->prenoms;
        $user->profession = $request->profession;
        $user->email = $request->email;
        $user->contact = isset($request->contact) ? $request->contact : '';
        $user->paysResidence = $request->paysResidence;
        $user->nationalite = $request->nationalite;
        $user->password = Hash::make($request->password);
        $user->save();


        //réponse
        return response()->json([
            "status" => 1,
            "message" => "Utilisateur crée avec succès"
        ]);
    }

    public function login(UserFormRequest $request)
    {
        $request->validate(
            [
                "email" => "required|email",
                "password" => "required",
            ]
        );

        //Vérifier si l'étudiant existe

        $user = User::where('email', '=', $request->email)->first();

        if ($user) {

            if (Hash::check($request->password, $user->password)) {

                //créer un jeton ou un token

                $token = $user->createToken('auth_token')->plainTextToken;

                //réponse
                return response()->json([
                    "status" => 1,
                    "message" => "Connexion Réussie",
                    "acces_token" =>$token
                ], 200);


            } 

            else
            
            {
                //réponse
                return response()->json([
                    "status" => 0,
                    "message" => "Mot de Passe incorrect"
                ]);
            }
        } else {

            //réponse
            return response()->json([
                "status" => 0,
                "message" => "Utilisateur n'existe pas ou est introuvable"
            ], 404);
        }
    }


    
    public function logout(UserFormRequest $request)
    {
        Auth::user()->tokens()->delete();

        return response()->json(
            [
                "status" => 1,
                "message" => "Déconnexion réussie",
            ],
            
        );
    }



    public function profile(UserFormRequest $request)
    {
        return response()->json(
            [
                "status" => 1,
                "message" => "Informations sur le profil de l'utilisateur",
                "datas" => Auth::user()
            ],
            200
        );
    }





    public function index()
    {

        $user = user::get();

        return response()->json(
            [
                "status" => 1,
                "message" => "Liste des Utilisateurs",
                "data" => $user
            ],
            200
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(UserFormRequest $request)
    {


        $request->validate(
            [
                "nom" => "required",
                "prenoms" => "required",
                "profession" => "required",
                "email" => "required",
                "contact" => "required",
                "paysResidence" => "required",
                "nationalite" => "required",
                "password" => "required",
            ]
        );

        //créer un utilisateur
        $user = new User();
        $user->nom = $request->nom;
        $user->prenoms = $request->prenoms;
        $user->profession = $request->profession;
        $user->email = $request->email;
        $user->contact = $request->contact;
        $user->paysResidence = $request->paysResidence;
        $user->nationalite = $request->nationalite;
        $user->password = $request->password;
        $user->save();

        //Un renvoi de réponse personnalisé

        return response()->json([
            "status" => 1,
            "message" => "Utilisateur crée avec succès"
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\UserFormRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserFormRequest $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user, $id)
    {
        //Vérifie si un utilisateur existe

        $user = User::where("id", $id)->exists();

        if ($user) {

            $info = User::find($id);
            return response()->json(
                [
                    "status" => 1,
                    "message" => "Utilsateur trouvé",
                    "data" => $info

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Aucun Utilisateur trouvé",

                ],
                404
            );
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UserFormRequest  $request
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function update(UserFormRequest $request, User $user, $id)
    {

        //Vérifie si un utilisateur existe

        $user = User::where("id", $id)->exists();

        if ($user) {

            $user = User::find($id);
            $user->nom = $request->nom;
            $user->prenoms = $request->prenoms;
            $user->profession = $request->profession;
            $user->email = $request->email;
            $user->contact = $request->contact;
            $user->paysResidence = $request->paysResidence;
            $user->nationalite = $request->nationalite;
            $user->password = $request->password;
            $user->save();


            return response()->json(
                [
                    "status" => 1,
                    "message" => "Mise à jour réussie",
                    "data" => $user

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Erreur de mise à jour ",

                ],
                404
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Categorie  $categorie
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user, $id)
    {

        //Vérifie si un utilisateur existe

        $user = User::where("id", $id)->exists();

        if ($user) {

            $user = User::find($id);
            $user->delete();

            return response()->json(
                [
                    "status" => 1,
                    "message" => "Suppression de l'utilsateur réussie",

                ],
                200
            );
        } else {
            return response()->json(
                [
                    "status" => 0,
                    "message" => "Utilisateur introuvable",

                ],
                404
            );
        }
    }
}
