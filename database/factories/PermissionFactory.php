<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CategorieFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
          
            "nomPermission"=>array_rand(
                [
                    "ajouter",
                    "consulter",
                    "editer",
                ],
                1
            )
        ];
    }
}
