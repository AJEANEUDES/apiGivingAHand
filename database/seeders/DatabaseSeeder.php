<?php

namespace Database\Seeders;

use App\Models\Categorie;
use App\Models\Offre;
use App\Models\Paiement;
use App\Models\Permissions;
use App\Models\Projet;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(10)->create();
        Categorie::factory(10)->create();
        Projet::factory(10)->create();
        Offre::factory(10)->create();
        Paiement::factory(10)->create();

    }
}
