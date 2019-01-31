<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivExposedInfantTesingInformationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_exposed_infant_tesing_informations', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('testname')->nullable();
            $table->string('testdate')->nullable();
            $table->string('result_first')->nullable();
            $table->string('date_given_to_caregiver_first')->nullable();
            $table->string('infant_feeding_status_first')->nullable();
            $table->integer('hivei_id')->unsigned();
            $table->foreign('hivei_id')->references('id')->on('hiv_exposed_infants')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hiv_exposed_infant_tesing_informations');
    }
}
