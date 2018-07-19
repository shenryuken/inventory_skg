<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDeliveryTypeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('delivery_type', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('delivery_code', 5);
			$table->string('type_description', 20);
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
		Schema::drop('delivery_type');
	}

}
