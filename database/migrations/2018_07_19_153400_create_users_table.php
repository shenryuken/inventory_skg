<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('username', 100);
			$table->string('email')->unique();
			$table->string('password');
			$table->string('security_code');
			$table->string('mobile_no', 11);
			$table->string('remember_token')->nullable();
			$table->string('introducer', 100);
			$table->integer('total_referral')->nullable()->default(0);
			$table->integer('rank_id');
			$table->timestamps();
			$table->boolean('verified')->default(0);
			$table->string('email_token', 191)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('users');
	}

}
