<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivCareArtCartFamilyMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_care_art_cart_family_members', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('surName',50)->nullable();
            $table->string('firstName',50)->nullable();
            $table->string('age',3)->nullable();
            $table->string('HIV_status',20)->nullable();
            $table->string('Hive_Care',20)->nullable();
            $table->string('family_members_number',20)->unique()->nullable();

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
        Schema::dropIfExists('hiv_care_art_cart_family_members');
    }
}
