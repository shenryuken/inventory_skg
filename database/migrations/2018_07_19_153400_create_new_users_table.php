<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateNewUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('new_users', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('username', 100);
			$table->string('email')->unique('users_email_unique');
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
			$table->string('status', 30)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('new_users');
	}

}
