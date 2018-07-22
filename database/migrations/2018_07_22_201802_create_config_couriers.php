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
            $table->string('courier_code',10)->unique();
            $table->string('courier_name',150);
            $table->longtext('address');
            $table->string('tel',16);
            $table->string('fax',16 );
            $table->string('email',255);
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
        Schema::dropIfExists('config_couriers');
    }
}
