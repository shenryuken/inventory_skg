<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateConfigDeliveryTypesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('config_delivery_types', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('delivery_code', 5)->unique('delivery_type_delivery_code_unique');
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
		Schema::drop('config_delivery_types');
	}

}
