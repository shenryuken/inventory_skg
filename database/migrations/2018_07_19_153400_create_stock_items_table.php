<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStockItemsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stock_items', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('product_id');
			$table->integer('stock_id');
			$table->integer('supplier_id');
			$table->string('barcode', 32)->nullable();
			$table->integer('quantity');
			$table->string('status', 2);
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
		Schema::drop('stock_items');
	}

}
