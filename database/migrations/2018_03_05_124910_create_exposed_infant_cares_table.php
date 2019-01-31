<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExposedInfantCaresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exposed_infant_cares', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('DNA_test_results');
            $table->string('DNA_test_date',20);
            $table->string('DNA_test_month',3);
            $table->string('DNA_test_year',4);

            $table->integer('falimly_suport_group_register_id')->unsigned();
            $table->foreign('falimly_suport_group_register_id')->references('id')->on('falimly_suport_group_registers')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('exposed_infant_cares');
    }
}
