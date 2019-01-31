<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppointmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appointments', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('date_to_return',20);
            $table->string('time_to_return',10);
            $table->string('appointment_status',1);//1=pending 2=Passed
             $table->integer('family_suport_group_id')->unsigned();
            $table->foreign('family_suport_group_id')->references('id')->on('family_suport_groups')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appointments');
    }
}
