<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArtTreatmentInteraptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('art_treatment_interaptions', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('circle',10)->nullable();
            $table->string('date_accured',20)->nullable();
            $table->string('month_accured',3)->nullable();
            $table->string('year_accured',4)->nullable();
            $table->string('reason')->nullable();
            $table->string('date_restart',20)->nullable();
            $table->string('month_restart',3)->nullable();
            $table->string('year_restart',4)->nullable();

            $table->integer('hiv_care_art_card_id')->unsigned();
            $table->foreign('hiv_care_art_card_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('art_treatment_interaptions');
    }
}
