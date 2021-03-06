<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateOrdersItemTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('orders_item', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('order_hdr_id')->nullable();
			$table->integer('invoice_id');
			$table->string('order_no', 15);
			$table->string('do_no', 15);
			$table->integer('product_id');
			$table->integer('product_qty');
			$table->string('product_typ', 5);
			$table->string('product_status', 2);
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
		Schema::drop('orders_item');
	}

}
