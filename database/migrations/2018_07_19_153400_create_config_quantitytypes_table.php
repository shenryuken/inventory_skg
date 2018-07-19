<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateConfigQuantitytypesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('config_quantitytypes', function(Blueprint $table)
		{
			$table->integer('id')->unsigned()->primary();
			$table->string('type', 191)->comment('Quantity Type');
			$table->text('remarks');
			$table->integer('status')->default(1)->comment('0: inactive, 1: active');
			$table->integer('created_by')->nullable()->comment('User ID');
			$table->integer('updated_by')->nullable()->comment('User ID');
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
		Schema::drop('config_quantitytypes');
	}

}
