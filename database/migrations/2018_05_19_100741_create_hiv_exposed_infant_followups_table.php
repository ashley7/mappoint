<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivExposedInfantFollowupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_exposed_infant_followups', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('attempt_name')->nullable();
            $table->string('attempt_date')->nullable();
            $table->string('attempt_outcome')->nullable();
            $table->string('final_status')->nullable();
            
            $table->integer('hiv_exposed_infant_id')->unsigned();
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
        Schema::dropIfExists('hiv_exposed_infant_followups');
    }
}
