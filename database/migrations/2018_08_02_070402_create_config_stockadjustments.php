<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateConfigStockadjustments extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('config_stockadjustments', function (Blueprint $table) {
            $table->increments('id');
            $table->string('adjustment',191);
            $table->longtext('remarks');
            $table->string('operation',5);
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
        Schema::dropIfExists('config_stockadjustments');
    }
}
