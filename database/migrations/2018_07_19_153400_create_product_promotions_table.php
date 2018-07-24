<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductPromotionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_promotions', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('product_id')->default(0)->comment('product id');
			$table->string('description', 191)->default('')->comment('remarks');
			$table->integer('price_checked')->default(0)->comment('promotion price');
			$table->integer('gift_checked')->default(0)->comment('promotion gift');
			$table->dateTime('start')->nullable();
			$table->dateTime('end')->nullable();
			$table->float('price_wm', 12)->default(0.00)->comment('promotion bfr gst');
			$table->float('price_em', 12)->default(0.00)->comment('promotion bfr gst');
			$table->float('price_staff', 12)->default(0.00)->comment('promotion bfr gst');
			$table->integer('status')->default(1)->comment('1: On, 0: Off');
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
		Schema::drop('product_promotions');
	}

}
