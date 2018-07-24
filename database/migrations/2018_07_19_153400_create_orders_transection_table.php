<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateOrdersTransectionTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('orders_transection', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('order_type', 45);
			$table->string('mall_type',45);
			$table->string('agent_id', 45);
			$table->string('product_id', 45);
			$table->string('quantity', 45);
			$table->string('created_by', 45)->nullable();
			$table->string('updated_by', 45)->nullable();
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
		Schema::drop('orders_transection');
	}

}
