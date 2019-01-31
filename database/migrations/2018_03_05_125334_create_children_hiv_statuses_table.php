<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChildrenHivStatusesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('children_hiv_statuses', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('sName');
            $table->string('fName');
            $table->string('date_tested',20);
            $table->string('month_tested',3);
            $table->string('year_tested',4);
            $table->string('test_results');

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
        Schema::dropIfExists('children_hiv_statuses');
    }
}
