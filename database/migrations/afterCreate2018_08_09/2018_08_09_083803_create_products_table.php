<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('products', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('type')->comment('1: by item, 2: package 3: monthly promotion');
			$table->string('code', 191)->unique('product_code_unique');
			$table->string('name', 191)->default('');
			$table->text('description', 65535);
			$table->integer('qtytype_id')->default(1)->comment('Quantity Type');
			$table->integer('year')->default(1900);
			$table->integer('month')->default(0)->comment('Category ID');
			$table->integer('category')->default(0)->comment('Category ID');
			$table->float('price_wm', 12)->default(0.00)->comment('price bfr gst');
			$table->float('price_em', 12)->default(0.00)->comment('price bfr gst');
			$table->float('price_staff', 12)->default(0.00)->comment('price bfr gst');
			$table->float('last_purchase', 12)->default(0.00)->comment('last purchase price');
			$table->integer('point')->default(0);
			$table->float('weight')->default(0.00);
			$table->integer('notforsale')->default(0)->comment('0: No, 1: Yes');
			$table->integer('status')->default(1)->comment('0: inactive, 1: active, 2: draft');
			$table->integer('quantity_min')->default(0)->comment('minimum stock (reminder)');
			$table->integer('quantity')->default(0)->comment('curent stock');
			$table->string('remarks', 191)->default('')->comment('Remarks back end');
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
		Schema::drop('products');
	}

}
