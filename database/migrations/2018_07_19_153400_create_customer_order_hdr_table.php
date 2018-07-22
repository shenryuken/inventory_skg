<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCustomerOrderHdrTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('order_hdr', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('order_no', 15);
			$table->integer('agent_id');
			$table->string('invoice_no', 15);
			$table->integer('total_items');
			$table->integer('gst');
			$table->decimal('shipping_fee');
			$table->decimal('total_price');
			$table->integer('delivery_type');
			$table->string('purchase_date', 10);
			$table->string('status', 2);
			$table->integer('bill_address');
			$table->integer('ship_address');
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
		Schema::drop('customer_order_hdr');
	}

}
