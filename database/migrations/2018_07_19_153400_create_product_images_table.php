<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductImagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_images', function(Blueprint $table)
		{
			$table->integer('id')->unsigned()->unique('product_image_id_unique');
			$table->integer('product_id')->default(0)->comment('product id');
			$table->string('type', 191)->comment('type');
			$table->string('description', 191)->default('');
			$table->string('file_name', 191)->default('')->comment('image name');
			$table->string('path', 191)->default('')->comment('url image');
			$table->integer('status')->default(0)->comment('1: profile, 0: none');
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
		Schema::drop('product_images');
	}

}
