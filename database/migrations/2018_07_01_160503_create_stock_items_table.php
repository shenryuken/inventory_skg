<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStockItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('product_stock');
        Schema::create('stock_items', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('product_id');
            $table->integer('stock_id');
            $table->integer('supplier_id');
            $table->string('barcode',32)->nullable();
            $table->integer('quantity');
            $table->string('status',2);
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('stock_items');
    }
}
