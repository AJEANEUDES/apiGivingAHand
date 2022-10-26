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
        DB::table("roles")->insert(
            [
                ["nomRole" => "admin"],
                ["nomRole" => "beneficiaire"],
                ["nomRole" => "donateur"],
            ]
        );
    }
}
