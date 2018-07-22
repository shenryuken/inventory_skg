<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGlobalNr extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('global_nr', function (Blueprint $table) {
            $table->increments('id');
            $table->string('table',30);
            $table->string('column',30);
            $table->integer('nritem');
            $table->string('nrcode',5);
            $table->string('current_date',8);
            $table->string('nrfrom',5);
            $table->string('nrto',5);
            $table->string('nrcurrent',5);
            $table->integer('status');
            $table->integer('created_by')->nullable()->comment('User ID');
            $table->integer('updated_by')->nullable()->comment('User ID');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('global_nr');
    }
}
