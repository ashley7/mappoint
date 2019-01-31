<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppointmentRecordCareTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appointment_record_care_types', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('care_type_id')->unsigned();
            $table->integer('apointment_record_id')->unsigned();

            $table->foreign('care_type_id')->references('id')->on('care_types')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('apointment_record_id')->references('id')->on('apointment_records')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appointment_record_care_types');
    }
}
