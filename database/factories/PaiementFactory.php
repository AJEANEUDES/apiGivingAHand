<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PaiementFactory extends Factory
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

            "projet_id"=>rand(1,10), 
            "user_id"=>rand(1,10), 
            "montantPaye"=>$this->faker->randomNumber(),
            "datePaiement"=>$this->faker->date(),
            

        ];
    }
}
