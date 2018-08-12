<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAgentOrdersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('agent_orders', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('agent_id')->default(0);
			$table->integer('user_id');
			$table->integer('invoice_id');
			$table->integer('do_no');
			$table->integer('total_items');
			$table->string('status', 30);
			$table->string('order_from', 100)->nullable();
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
		Schema::drop('agent_orders');
	}

}
