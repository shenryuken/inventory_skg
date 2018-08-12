<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStockAdjustmentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stock_adjustments', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('stockadjustment_type_id');
			$table->string('description', 100)->nullable();
			$table->string('created_by', 191)->nullable();
			$table->string('updated_by', 191)->nullable();
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
		Schema::drop('stock_adjustments');
	}

}
