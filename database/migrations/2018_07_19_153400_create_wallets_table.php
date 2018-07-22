<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWalletsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('wallets', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id');
			$table->integer('p_wallet');
			$table->float('rmvp', 10, 0);
			$table->integer('pv');
			$table->integer('current_pv');
			$table->integer('do_pv');
			$table->integer('sdo_pv');
			$table->float('retail_profit', 10, 0);
			$table->float('personal_rebate', 10, 0);
			$table->float('direct_sponsor', 10, 0);
			$table->float('generations_group', 10, 0);
			$table->float('do_cto', 10, 0);
			$table->float('sdo_cto', 10, 0);
			$table->float('sdo_group', 10, 0);
			$table->float('sdo_to_sdo', 10, 0);
			$table->integer('first_purchased');
			$table->float('first_purchased_rmvp', 10, 0);
			$table->integer('purchased');
			$table->integer('total_bonus');
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
		Schema::drop('wallets');
	}

}
