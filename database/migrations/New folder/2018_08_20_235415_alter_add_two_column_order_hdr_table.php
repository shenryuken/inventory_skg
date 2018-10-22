<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterAddTwoColumnOrderHdrTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders_hdr', function (Blueprint $table) {
            //
            $table->string('user_id',45)->after('agent_id');
            $table->string('name',45)->after('ship_address');
            $table->string('contect_no',45)->after('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('orders_hdr', function (Blueprint $table) {
            //
        });
    }
}
