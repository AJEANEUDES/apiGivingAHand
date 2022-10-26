<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserPermissionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_permission', function (Blueprint $table) {
            $table->foreignId("user_id")->constrained();
            $table->foreignId("role_id")->constrained();
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

        schema::table('user_permission',function(Blueprint $table)
        {
            $table->dropForeign(["user_id", "permission_id"]);
        });

        Schema::dropIfExists('user_permission');
    }
}
