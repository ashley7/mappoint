<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFalimlySuportGroupRegistersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('falimly_suport_group_registers', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('date_of_enrolement',20)->nullable();
            $table->string('month_of_enrolement',3)->nullable();
            $table->string('year_of_enrolement',4)->nullable();
            $table->string('relationship_to_index_client')->nullable();
            $table->string('first_time_or_reEnrollemt')->nullable();
            $table->string('hiv_status_at_enrolment')->nullable();
            $table->string('disclousure_status')->nullable();
            $table->string('entry_point')->nullable();
            $table->string('family_planning_method')->nullable();
            $table->string('maternal_care')->nullable();
            $table->string('prophylaxis_treatment')->nullable();
            $table->integer('hiv_care_art_card_id')->unsigned();
            $table->integer('fsg_service_id')->unsigned();
            $table->integer('family_suport_group_id')->unsigned();
            $table->foreign('hiv_care_art_card_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('fsg_service_id')->references('id')->on('fsg_services')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('falimly_suport_group_registers');
    }
}
