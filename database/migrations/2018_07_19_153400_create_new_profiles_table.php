<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateNewProfilesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('new_profiles', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('newprofileable_id');
			$table->string('newprofileable_type', 100);
			$table->string('full_name', 150);
			$table->date('dob');
			$table->enum('gender', array('Male','Female'));
			$table->enum('marital_status', array('Single','Married','Widowed'));
			$table->enum('id_type', array('MyKad','Passport'));
			$table->string('id_no', 30);
			$table->string('id_pic')->nullable();
			$table->enum('status_ic', array('Approved','Pending','Not Valid'));
			$table->string('street');
			$table->string('postcode', 8);
			$table->string('city', 100);
			$table->string('state', 100);
			$table->string('country', 100);
			$table->string('contact_no', 14);
			$table->string('contact_no2', 14)->nullable();
			$table->string('beneficiary_name', 150)->nullable();
			$table->string('relationship', 30)->nullable();
			$table->text('beneficiary_address', 65535)->nullable();
			$table->string('beneficiary_mobile_no', 14)->nullable();
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
		Schema::drop('new_profiles');
	}

}
