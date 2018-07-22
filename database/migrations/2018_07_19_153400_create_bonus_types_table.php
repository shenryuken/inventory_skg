<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBonusTypesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bonus_types', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 100);
			$table->integer('value');
			$table->string('value_type', 30);
			$table->string('rank', 150);
			$table->string('term', 30);
			$table->integer('duration');
			$table->string('duration_type', 30);
			$table->text('description', 65535);
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
		Schema::drop('bonus_types');
	}

}
