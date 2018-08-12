<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductPromotionGiftsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_promotion_gifts', function(Blueprint $table)
		{
			$table->integer('id')->unsigned()->unique('product_promotion_gift_id_unique');
			$table->integer('promotion_id')->default(0)->comment('promotion id');
			$table->integer('product_id')->default(0)->comment('product id');
			$table->integer('quantity')->default(0)->comment('quantity');
			$table->string('description', 191)->default('')->comment('remarks');
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
		Schema::drop('product_promotion_gifts');
	}

}
