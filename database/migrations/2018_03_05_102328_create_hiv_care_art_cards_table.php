<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivCareArtCardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_care_art_cards', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('PatientNumber',20)->unique();
            $table->string('health_unit')->nullable();
            $table->string('surName',50)->nullable();
            $table->string('firstName',50)->nullable();
            $table->string('sex',10)->nullable();
            $table->string('age')->nullable();
            $table->string('date_of_birth',20)->nullable();
            $table->string('month_of_birth',3)->nullable();
            $table->string('year_of_birth',4)->nullable();
            $table->string('merital_status',40)->nullable();
            $table->string('address')->nullable();
            $table->string('test_type',20)->nullable();
            $table->string('test_location')->nullable();
            $table->string('phone_number')->nullable()->unique();
            $table->string('phone_owner_name',100)->nullable();
            $table->text('treatmemnt_suporter')->nullable();
            $table->string('treatment_address')->nullable();
            $table->string('treatment_telephone')->nullable();
            $table->string('home_based_care_provider')->nullable();
            $table->string('drug_allagies')->nullable();
            $table->string('date_comfirmed_hiv',20)->nullable();
            $table->string('month_comfirmed_hiv',3)->nullable();
            $table->string('year_comfirmed_hiv',4)->nullable();
            $table->string('place_of_hive_confirmation')->nullable();
            $table->string('date_enrolled_in_HIV',20)->nullable();
            $table->string('month_enrolled_in_HIV',3)->nullable();
            $table->string('year_enrolled_in_HIV',4)->nullable();
            $table->string('cohort')->nullable();
            $table->string('date_medically_legible',20)->nullable();
            $table->string('month_medically_legible',3)->nullable();
            $table->string('year_medically_legible',4)->nullable();
            $table->string('clinical_stage')->nullable();
            $table->string('reason_why_elligible')->nullable();
            $table->string('date_madically_eligible_date_ART',20)->nullable();
            $table->string('month_madically_eligible_date_ART',3)->nullable();
            $table->string('year_madically_eligible_date_ART',4)->nullable();
            $table->string('date_transfered_in',20)->nullable();
            $table->string('month_transfered_in',3)->nullable();
            $table->string('year_transfered_in',4)->nullable();
            $table->string('transfred_in_from')->nullable();
            $table->string('date_art_started',20)->nullable();
            $table->string('month_art_started',3)->nullable();
            $table->string('year_art_started',4)->nullable();
            $table->string('initial_regimen')->nullable();
            $table->string('weight_at_ART_start')->nullable();
            $table->string('function_at_ART_start')->nullable();
            $table->string('date_transfred_out',20)->nullable();
            $table->string('month_transfred_out',3)->nullable();
            $table->string('year_transfred_out',4)->nullable();
            $table->string('place_tranfred_to')->nullable();
            $table->string('date_died',20)->nullable();
            $table->string('month_died',3)->nullable();
            $table->string('year_died',4)->nullable();
            $table->string('person_live_status')->nullable();
            $table->string('preg',5)->nullable();
            $table->string('lact',5)->nullable();
            $table->string('relevant_medical_conditions')->nullable();

            $table->integer('village_id')->unsigned()->nullable();
            $table->integer('pt_clinic_id')->unsigned()->nullable();
            $table->integer('care_entry_point_id')->unsigned()->nullable();
            $table->string('care_entry_point_specify')->nullable();
            $table->integer('district_clinitian_id')->unsigned()->nullable();
            $table->integer('user_id')->unsigned()->nullable();

            $table->foreign('village_id')->references('id')->on('villages')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('pt_clinic_id')->references('id')->on('pt_clinics')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('care_entry_point_id')->references('id')->on('care_entry_points')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('district_clinitian_id')->references('id')->on('district_clinitians')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hiv_care_art_cards');
    }
}
