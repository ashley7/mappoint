<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExposedInfantFollowupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exposed_infant_followups', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('name')->nullable();
            $table->string('dob')->nullable();
            $table->string('feeding_status')->nullable();
            $table->string('CTP')->nullable();
            $table->string('date_of_first_PCR')->nullable();
            $table->string('final_status')->nullable();
            $table->string('unique_id')->nullable()->unique();
            $table->integer('HivCareArtCard_id')->unsigned()->nullable();
            $table->foreign('HivCareArtCard_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('exposed_infant_followups');
    }
}
