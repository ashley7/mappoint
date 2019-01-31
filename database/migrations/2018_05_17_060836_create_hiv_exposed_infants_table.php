<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivExposedInfantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_exposed_infants', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            
            $table->string('infant_number')->unique();
            $table->string('date_of_registration')->nullable();
             
            $table->string('surname')->nullable();
            $table->string('firstname')->nullable();
            $table->string('sex')->nullable();
            $table->string('date_of_birth')->nullable();
            $table->string('age')->nullable();
            $table->string('clinic_referred_from')->nullable();
            $table->string('date_at_nvp')->nullable();
            $table->string('age_at_nvp')->nullable();
            $table->string('date_at_cotrim')->nullable();
            $table->string('age_at_cotrim')->nullable();
            $table->string('surname_of_mother')->nullable();
            $table->string('Mothers_ANC_No')->nullable();
            $table->string('Mothers_PRE_ART_No')->nullable();
            $table->string('firstname_of_mother')->nullable();
            $table->string('MotherNewlyTestedDuringBreastFeeding')->nullable();
            $table->string('MotherNewlyEnrolledARTDuringBreastFeeding')->nullable();
            $table->string('mother_antinantal')->nullable();
            $table->string('mother_delivery')->nullable();
            $table->string('mother_postnantal')->nullable();
            $table->string('infants_arvforemtct')->nullable();

         

            $table->string('discharged_neg')->nullable();
            $table->string('lost')->nullable();
            $table->string('refferred_for_art')->nullable();
            $table->string('died')->nullable();
            $table->string('clinic')->nullable();
            $table->string('enrolled')->nullable();//[y/n]
            $table->string('pre_art_number')->nullable();
            $table->string('transferred')->nullable();
            $table->string('transferred_to')->nullable();

            $table->string('referred_to_art_clinic')->nullable();
            $table->string('enrolled_to_art_clinic')->nullable();
            $table->string('date_enrolled_at_art_clinic')->nullable();
            $table->string('date_referred_to_art_clinic')->nullable();
            $table->string('place_of_delivery')->nullable();
            $table->string('mode_of_delivery')->nullable();
            $table->string('mother_pmtct')->nullable();
            $table->string('art_clinic_option')->nullable();
            $table->string('art_clinic')->nullable();
            $table->string('outreachworkers_intro')->nullable();
            $table->string('relationship')->nullable();
            $table->string('person_disclosure')->nullable();
            $table->string('relative_phonenumber')->nullable();
            $table->string('care_giver_address_directions')->nullable();
            $table->string('alternative_contact_person')->nullable();
            $table->string('lc_chairman')->nullable();
            $table->string('lc_one_zone')->nullable();
            $table->string('entry_point')->nullable();
            $table->string('commonname_of_mother')->nullable();
            $table->string('phone_number')->nullable();
            $table->integer('pt_clinic_id')->unsigned()->nullable();
            $table->integer('village_id')->unsigned()->nullable();

            $table->integer('hiv_care_art_card_id')->unsigned()->nullable();
            $table->foreign('hiv_care_art_card_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('pt_clinic_id')->references('id')->on('pt_clinics')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('village_id')->references('id')->on('villages')->onUpdate('cascade')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hiv_exposed_infants');
    }
}
