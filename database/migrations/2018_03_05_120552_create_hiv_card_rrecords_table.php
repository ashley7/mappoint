<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHivCardRrecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hiv_card_rrecords', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('date_checked_in',20)->nullable();
            $table->string('month_checked_in',3)->nullable();
            $table->string('year_checked_in',4)->nullable();
            $table->string('follow_up_date',20)->nullable();
            $table->string('follow_up_month',3)->nullable();
            $table->string('follow_up_year',4)->nullable();
            $table->string('duration_since_start_regimen',20)->nullable();
            $table->string('duration_since_start_art',20)->nullable();
            $table->string('Wt',50)->nullable();
            $table->string('method_hieght',50)->nullable();
            $table->string('function_work',50)->nullable();
            $table->string('WHO_clinic_stage',50)->nullable();
            $table->string('TB_status',50)->nullable();
            $table->string('potential_side_effects')->nullable();
            $table->string('other_problems')->nullable();
            $table->string('Cotrimoxole_Adhere')->nullable();
            $table->string('Cotrimoxole_Dose')->nullable();
            $table->string('Cotrimoxole_days')->nullable();
            $table->string('INH_of_pills')->nullable();
            $table->string('INH_of_days')->nullable();
            $table->string('Other_methods_dispensed')->nullable();
            $table->string('ARV_adhere')->nullable();
            $table->string('ARV_regimen')->nullable();
            $table->string('CD4_count')->nullable();
            $table->string('link_provider')->nullable();
            $table->string('reason_for_pooradherence')->nullable();
            $table->string('muac_oedema')->nullable();
            $table->string('fp_nofp')->nullable();
            $table->string('age')->nullable();
            $table->string('ARV_regimen_of_pills')->nullable();
            $table->string('ARV_regimen_of_dispensed')->nullable();
            $table->string('infant_ab_pcr')->nullable();
            $table->string('edd_emtct')->nullable();
            $table->string('TB_rx')->nullable();
            $table->string('district_tb')->nullable();
            $table->string('functional_status')->nullable();       
            $table->integer('hiv_care_art_card_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->foreign('hiv_care_art_card_id')->references('id')->on('hiv_care_art_cards')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hiv_card_rrecords');
    }
}
