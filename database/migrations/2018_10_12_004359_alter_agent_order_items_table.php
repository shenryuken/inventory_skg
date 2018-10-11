<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterAgentOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('agent_order_items', function (Blueprint $table) {
            //
			$table->decimal('price',7,2)->after('product_qty')->default(0.00);
            $table->string('discount',5)->after('product_qty')->default(0.00);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('agent_order_items', function (Blueprint $table) {
            //
        });
    }
}
