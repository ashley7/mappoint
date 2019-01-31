<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivExposedInfantVisitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_exposed_infant_visits', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->integer('hiv_exposed_infant_id')->unsigned();
            $table->string('appointment_date')->nullable();
            $table->string('visit_date')->nullable();
            $table->string('age')->nullable();
            $table->string('visit_name')->nullable();
            $table->string('hive_test')->nullable();
            $table->string('immunisation_codes')->nullable();
            $table->string('clinical_assessment_spec')->nullable();
            $table->string('height')->nullable();
            $table->string('weight')->nullable();
            $table->string('ctx_nvp')->nullable();
            $table->string('cotrim')->nullable();
            $table->string('infant_feeding')->nullable();
            $table->string('nvp')->nullable();
            $table->string('actions_taken')->nullable();
            $table->string('other_indicators')->nullable();
            $table->string('muac')->nullable();
            $table->string('Pre_ART_No')->nullable();
            $table->string('mother_arv')->nullable();
            $table->string('development_milestones')->nullable();
            $table->string('head_circumference')->nullable();
            $table->foreign('hiv_exposed_infant_id')->references('id')->on('hiv_exposed_infants')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hiv_exposed_infant_visits');
    }
}
