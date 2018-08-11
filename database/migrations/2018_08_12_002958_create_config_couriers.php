<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConfigCouriers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('config_couriers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('courier_code',10);
            $table->string('courier_name',150);
            $table->longtext('address')->nullable();
            $table->string('tel',16)->nullable();
            $table->string('fax',16)->nullable();
            $table->string('email',250)->nullable();
            $table->integer('created_by');
            $table->integer('updated_by');
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
        Schema::dropIfExists('config_couriers');
    }
}
