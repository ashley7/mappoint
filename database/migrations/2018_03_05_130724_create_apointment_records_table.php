<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApointmentRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apointment_records', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('number_of_visits',30);
            $table->string('attendance_status',10);
            $table->string('follow_up_status')->nullable();
            $table->text('notes')->nullable();
            $table->string('method_of_follow_up')->nullable();
            $table->string('reschedauled_date',20)->nullable();
            $table->string('reschedauled_time',10)->nullable();

            $table->integer('appointment_id')->unsigned();
            $table->integer('hiv_care_art_card_id')->unsigned();
            
            $table->foreign('hiv_care_art_card_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('appointment_id')->references('id')->on('appointments')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('apointment_records');
    }
}
