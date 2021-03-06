<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAuditTrailTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('audit_trail', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('action', 45);
			$table->string('action_by', 45);
			$table->string('event', 100);
			$table->string('event_created', 45);
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
		Schema::drop('audit_trail');
	}

}
