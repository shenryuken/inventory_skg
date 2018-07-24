<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUserPurchasesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('user_purchases', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('product_id');
			$table->string('product_name');
			$table->string('serial_no', 30)->nullable();
			$table->float('price', 10, 0);
			$table->integer('pv');
			$table->string('status', 50);
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
		Schema::drop('user_purchases');
	}

}
