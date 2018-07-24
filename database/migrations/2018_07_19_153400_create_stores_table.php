<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStoresTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stores', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('product_id');
			$table->string('product_name');
			$table->string('serial_no', 30)->nullable();
			$table->float('price', 10, 0);
			$table->integer('pv');
			$table->string('status', 50);
			$table->enum('lock_status', array('lock','unlock'))->default('unlock');
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
		Schema::drop('stores');
	}

}
