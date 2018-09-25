<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSuppliersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('suppliers', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('company_name', 150);
			$table->string('street');
			$table->integer('postcode');
			$table->string('city', 100);
			$table->string('state', 100);
			$table->string('country', 100);
			$table->string('telephone_no', 16);
			$table->string('fax_no', 16);
			$table->string('email', 150);
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
		Schema::drop('suppliers');
	}

}
