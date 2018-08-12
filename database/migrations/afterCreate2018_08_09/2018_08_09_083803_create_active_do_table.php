<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateActiveDoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('active_do', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('user_id')->unique('user_id');
			$table->string('rank', 50);
			$table->integer('personal_gpv');
			$table->integer('total_group_pv');
			$table->integer('first_gpv_purchased');
			$table->integer('gen_first_purchased');
			$table->integer('generations_gpv');
			$table->float('do_group_bonus', 10, 0);
			$table->integer('cto_unit_share');
			$table->float('cto_value_share', 10, 0);
			$table->integer('branch3');
			$table->integer('branch5');
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
		Schema::drop('active_do');
	}

}
