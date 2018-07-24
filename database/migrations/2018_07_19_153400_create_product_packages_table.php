<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductPackagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_packages', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('package_id')->default(0)->comment('package product id');
			$table->integer('product_id')->default(0)->comment('product id');
			$table->integer('quantity')->default(1)->comment('quantity product');
			$table->string('description', 191)->default('');
			$table->integer('created_by')->nullable()->comment('User ID');
			$table->timestamps();
			$table->integer('updated_by')->nullable()->comment('User ID');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('product_packages');
	}

}
