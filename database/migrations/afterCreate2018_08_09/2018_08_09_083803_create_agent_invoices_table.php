<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAgentInvoicesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('agent_invoices', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('agent_id');
			$table->string('invoice_no', 100);
			$table->integer('user_id');
			$table->integer('delivery_cost');
			$table->float('total', 10, 0);
			$table->string('status', 50);
			$table->integer('balance');
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
		Schema::drop('agent_invoices');
	}

}
