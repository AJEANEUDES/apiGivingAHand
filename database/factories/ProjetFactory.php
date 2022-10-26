<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProjetFactory extends Factory
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
            "categorie_id"=>rand(1,10), 
            "user_id"=>rand(1,10), 
            "nomProjet"=>$this->faker->text,
            "description"=>$this->faker->paragraph(1),
            "image"=>$this->faker->imageUrl(),
            "video"=>$this->faker->imageUrl(),
            "lien_projet"=>$this->faker->text,
            "ressource_financiaire"=>$this->faker->sentence(),
            "ressource_humaine"=>$this->faker->sentence(),
            "ressource_materielle"=>$this->faker->sentence(),
            "estimation_ressource_materielle"=>$this->faker->sentence(),
            "validate"=>rand(0,1),
            "delai"=>$this->faker->dateTimeInInterval("1980-01-01", "2030-12-31"),
            "coordonnees"=>$this->faker->sentence(),


        ];
    }
}
