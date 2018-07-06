<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTransectionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders_transection', function (Blueprint $table) {
            $table->increments('id');
            $table->string('agent_id',45);
            $table->string('product_id',45);
            $table->string('quantity',45);
            $table->string('created_by',45)->nullable();
            $table->string('updated_by',45)->nullable();
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
        Schema::dropIfExists('orders_transection');
    }
}
