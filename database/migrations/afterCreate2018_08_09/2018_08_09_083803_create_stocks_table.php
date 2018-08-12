<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStocksTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('stocks', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('stock_date');
			$table->string('stock_in_no', 32)->unique();
			$table->text('description', 65535)->nullable();
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
		Schema::drop('stocks');
	}

}
