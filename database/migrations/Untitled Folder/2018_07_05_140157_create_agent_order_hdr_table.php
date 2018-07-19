<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgentOrderHdrTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agent_order_hdr', function (Blueprint $table) {
            $table->increments('id');
            $table->string('order_no', 15)->unique();
            $table->integer('agent_id');
            $table->string('invoice_no', 15);
            $table->integer('total_items');
            $table->integer('gst');
            $table->decimal('shipping_fee', 8, 2);
            $table->decimal('total_price', 8, 2);
            $table->integer('delivery_type');
            $table->date('purchase_date');
            $table->string('status', 2);
            $table->integer('bill_address');
            $table->integer('ship_address');
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('agent_order_hdr');
    }
}
