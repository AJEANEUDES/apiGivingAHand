<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProjetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table("permissions")->insert(
            [
                ["nomPermission" => "ajouter"],
                ["nomPermission" => "consulter"],
                ["nomPermission" => "editer"],
                
               
            ]
        );
    }
}
