<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projets', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained();
            $table->foreignId('categorie_id')->constrained();
            $table->string('nomProjet');
            $table->text('description'); //Une description détaillée du projet
            $table->string('image'); //
            $table->string('video');  
            $table->string('lien_projet');
            $table->string('ressource_financiaire');
            $table->string('ressource_humaine');
            $table->text('ressource_materielle'); 
            $table->string('estimation_ressource_materielle'); //Estimation du besoin matériel en argent
            $table->boolean('validate')->default(false);
            $table->date('delai'); //Date de délai pour le crowdfunding
            $table->text('coordonnees');
            // $table->integer('created_by');
            $table->timestamps();
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        schema::table('projets',function(Blueprint $table)
        {
            $table->dropForeign(["user_id", "categorie_id"]);
        });
        Schema::dropIfExists('projets');
    }
}
