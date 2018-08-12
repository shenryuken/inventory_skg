<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAgentOrderItemsOldTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('agent_order_items_old', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('agent_id')->nullable();
			$table->integer('order_id');
			$table->integer('product_id');
			$table->text('serial_no', 65535)->nullable();
			$table->integer('qty');
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
		Schema::drop('agent_order_items_old');
	}

}
