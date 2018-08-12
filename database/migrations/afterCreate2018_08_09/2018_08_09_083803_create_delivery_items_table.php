<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDeliveryItemsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('delivery_items', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('delivery_id');
			$table->integer('product_id');
			$table->string('barcode', 32);
			$table->integer('quantity');
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
		Schema::drop('delivery_items');
	}

}
