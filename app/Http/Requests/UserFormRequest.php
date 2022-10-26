<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserFormRequest extends FormRequest
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


            'nom'=>[
                'required',
                'string',
                'max:200'
            ],

            'prenoms'=>[
                'required',
                'string',
                'max:200'
            ],

            'profession'=>[
                'required',
                'string',
                'max:200'
            ],

            'email'=>[
                'required',
                'string',
                'max:200'
            ],

            'contact'=>[
                'required',
                'string',
                'max:200'
            ],


            'paysResidence'=>[
                'required',
                'string',
                'max:200'
            ],


            'nationalite'=>[
                'required',
                'string',
                'max:200'
            ],


            'password'=>[
                'required',
                'string',
                'max:200'

            ],

          
        ];
        
        return $rules;
    }
}
