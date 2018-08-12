<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUserBonusesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('user_bonuses', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('user_id');
			$table->float('retail_profit', 10, 0);
			$table->float('personal_rebate', 10, 0);
			$table->float('direct_sponsor', 10, 0);
			$table->float('do_group_bonus', 10, 0);
			$table->float('sdo_group_bonus', 10, 0);
			$table->float('do_cto_pool', 10, 0);
			$table->float('sdo_cto_pool', 10, 0);
			$table->float('sdo_sdo', 10, 0);
			$table->float('total_bonus', 10, 0);
			$table->integer('year');
			$table->integer('month');
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
		Schema::drop('user_bonuses');
	}

}
