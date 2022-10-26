<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class OffreFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [


            "donfin"=>$this->faker->dateTimeInInterval(),
            "donMontant"=>$this->faker->randomNumber(),
            "temps"=>$this->faker->dateTimeInInterval(),
        ];
    }
}
