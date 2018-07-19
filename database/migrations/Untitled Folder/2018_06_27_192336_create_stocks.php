<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStocks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('stocks');
        Schema::create('stocks', function (Blueprint $table) {
            $table->increments('id');
            $table->date('stock_date');
            $table->string('stock_in_no',32)->unique();
            $table->text('description')->nullable();
            $table->integer('created_by')->comment('User ID')->nullable();
            $table->integer('updated_by')->comment('User ID')->nullable();
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
        Schema::dropIfExists('stock_ins');
    }
}
