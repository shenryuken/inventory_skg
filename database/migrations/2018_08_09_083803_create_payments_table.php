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
			$table->float('cash', 10, 0)->default(0);
			$table->integer('voucher')->default(0);
			$table->integer('coupon')->default(0);
			$table->integer('ewallet')->default(0);
			$table->integer('credit_debit_card')->default(0);
			$table->integer('online')->default(0);
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
