<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateConfigProductcategoriesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('config_productcategories', function(Blueprint $table)
		{
			$table->integer('id')->unsigned()->primary();
			$table->string('category', 191)->comment('Product Category');
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
		Schema::drop('config_productcategories');
	}

}
