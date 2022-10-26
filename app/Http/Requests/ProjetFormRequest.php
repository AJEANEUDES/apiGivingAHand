<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProjetFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [

            'categorie_id'=>[
                'required',
                'integer',
            ],

            'user_id'=>[
                'required',
                'integer',
            ],

            'nomProjet'=>[
                'required',
                'string',
                'max:200'
            ],

            'description'=>[
                'required',
                'string',
            ],

            
            'image' =>[
                'required',
                'mimes:jpeg,jpg,png',
                
            ],

            
            'video' =>[
                'required',
                'mimes:mp4,mp3,mov,avi',
                
            ],


            'lien_projet'=>[
                'required',
                'string',
                'max:200'
            ],

            'ressource_financiaire'=>[
                'required',
                'string',
                'max:200'
            ],

            'ressource_humaine'=>[
                'required',
                'string',
                'max:200'
            ],

            'ressource_humaine'=>[
                'required',
                'string',
                
            ],

            'estimation_ressource_materielle'=>[
                'required',
                'string',
            ],


            'validate'=>[
                'nullable',
            ],
            
            'delai'=>[
                'required',
                'string'
            ],

            'coordonnees'=>[
                'required',
                'string',
            ],


        ];
        
        return $rules;
    }
}
