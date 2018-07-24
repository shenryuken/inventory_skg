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
			$table->increments('id');
			$table->string('supplier_code', 10)->unique();
			$table->string('company_name', 150);
			$table->string('street');
			$table->string('street2')->nullable();
			$table->integer('postcode');
			$table->string('city', 100);
			$table->string('state', 100);
			$table->string('country', 100);
			$table->string('telephone_no', 16);
			$table->string('fax_no', 16)->nullable();
			$table->string('email', 150);
			$table->integer('updated_by')->nullable();
			$table->integer('created_by')->nullable();
			$table->string('attn_no', 16)->nullable();
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
