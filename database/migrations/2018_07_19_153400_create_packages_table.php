<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePackagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('packages', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 150);
			$table->string('code', 50);
			$table->string('category', 100);
			$table->integer('serial_no')->nullable();
			$table->integer('cost_price_em');
			$table->integer('cost_price_wm');
			$table->float('em_price', 10, 0);
			$table->integer('wm_price');
			$table->float('wm_gst', 10, 0);
			$table->float('em_gst', 10, 0);
			$table->integer('pv');
			$table->string('description');
			$table->string('brochure');
			$table->integer('instock')->nullable();
			$table->timestamps();
			$table->integer('supplier_id')->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('packages');
	}

}
