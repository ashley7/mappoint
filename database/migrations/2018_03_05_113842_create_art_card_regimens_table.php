<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArtCardRegimensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('art_card_regimens', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('date_recorded',20)->nullable();
            $table->string('month_recorded',5)->nullable();
            $table->string('year_recorded',4)->nullable();
            $table->string('regimen')->nullable();
            $table->text('reason')->nullable();

            $table->integer('hiv_care_art_card_id')->unsigned()->nullable();
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
        Schema::dropIfExists('art_card_regimens');
    }
}
