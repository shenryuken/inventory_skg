<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePaymentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('payments', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('invoice_id');
			$table->integer('amount')->nullable();
			$table->float('cash', 10, 0);
			$table->integer('voucher');
			$table->integer('coupon')->nullable();
			$table->integer('ewallet')->nullable();
			$table->integer('credit_debit_card')->nullable();
			$table->integer('online')->nullable();
			$table->string('payment_type', 100);
			$table->string('status', 30);
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
		Schema::drop('payments');
	}

}
