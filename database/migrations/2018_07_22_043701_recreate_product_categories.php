<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RecreateProductCategories extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('config_productcategories');
        Schema::create('config_productcategories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('category', 191)->comment('Product Category');
            $table->text('remarks');
            $table->integer('status')->default(1)->comment('0: inactive, 1: active');
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
        Schema::dropIfExists('config_productcategories');
    }
}
