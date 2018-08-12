<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductSalesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('product_sales', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('product_id');
			$table->integer('quantity');
			$table->float('amount', 10, 0);
			$table->integer('month');
			$table->integer('year');
			$table->date('created_at');
			$table->date('updated_at');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('product_sales');
	}

}
