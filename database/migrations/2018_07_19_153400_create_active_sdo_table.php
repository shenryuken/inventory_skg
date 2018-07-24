<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateActiveSdoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('active_sdo', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id')->unique('user_id');
			$table->string('rank', 50);
			$table->integer('personal_gpv');
			$table->integer('first_gpv_purchased');
			$table->integer('gen_first_purchased');
			$table->integer('generations_gpv');
			$table->integer('do_branch3');
			$table->integer('do_branch5');
			$table->float('sdo_group_bonus', 10, 0);
			$table->float('sdo_to_sdo_bonus', 10, 0);
			$table->integer('cto_unit_share');
			$table->float('cto_value_share', 10, 0);
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
		Schema::drop('active_sdo');
	}

}
