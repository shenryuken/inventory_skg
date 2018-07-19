<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateShippedItemsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('shipped_items', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('shipment_id');
			$table->integer('product_id');
			$table->string('serial_no', 30);
			$table->string('status', 30);
			$table->date('created_at');
			$table->date('updated_at');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('shipped_items');
	}

}
