<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommunicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('communications', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->text("message")->nullable();
            $table->string("phonenumber")->nullable();
            $table->string("status",30)->nullable();            
            $table->string("amount")->nullable();
            $table->integer('appointment_id')->unsigned()->nullable();
            $table->integer('hiv_care_art_card_id')->unsigned()->nullable();
            
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
        Schema::dropIfExists('communications');
    }
}
