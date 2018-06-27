<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterSuppliersTable1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('suppliers', function (Blueprint $table) {
            //
            $table->string('supplier_code',10)->unique()->after('id');
            $table->string('street2', 255)->nullable()->after('street');
            $table->string('attn_no', 16)->nullable()->after('email');
            $table->string('fax_no', 16)->nullable()->change();
			$table->integer('created_by')->nullable()->after('email');
			$table->integer('updated_by')->nullable()->after('email');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('suppliers', function (Blueprint $table) {
            //
        });
    }
}
