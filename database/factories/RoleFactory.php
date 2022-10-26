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
          
           
            "nomRole"=>array_rand(
                [
                    "admin",
                    "beneficiaire",
                    "donateur",
                ],
                1
            )
        ];
    }
}
