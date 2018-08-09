<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSalesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sales', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('year');
			$table->integer('month');
			$table->float('total_sale', 10, 0);
			$table->float('re_total_sale', 10, 0)->nullable();
			$table->integer('total_pv');
			$table->integer('re_total_pv')->nullable();
			$table->float('total_profit', 10, 0)->default(0);
			$table->float('do_cto_val_unit', 10, 0)->default(0);
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
		Schema::drop('sales');
	}

}
