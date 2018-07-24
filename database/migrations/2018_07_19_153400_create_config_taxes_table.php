<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateConfigTaxesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('config_taxes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('code', 191)->unique('config_tax_code_unique')->comment('Example: GST');
			$table->integer('percent')->default(0)->comment('Percent tax: 6 %');
			$table->string('remarks', 191)->default('');
			$table->integer('created_by')->nullable()->comment('User ID');
			$table->timestamps();
			$table->integer('updated_by')->nullable()->comment('User ID');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('config_taxes');
	}

}
