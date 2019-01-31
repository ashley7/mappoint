<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColomsToFalimlySuportGroupRegisters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::table('falimly_suport_group_registers', function($table) {
             $table->string('prior_art')->nullable();
             $table->string('art')->nullable();
             $table->string('art_regimen_at_enrolment')->nullable();
             $table->string('Receiving_OI_Prophylaxis')->nullable();
             $table->string('Most_recent_CD4_Count')->nullable();
             $table->string('Most_recent_CD4_Count_date')->nullable();
             $table->string('Most_recent_WHO_Clinical_Stage')->nullable();
             $table->string('Tested_by_DNA_PCR')->nullable();
             $table->string('Date_of_DNA_PCR_Test')->nullable();
             $table->string('exp')->nullable();
             $table->string('Result_of_DNA_PCR_Test')->nullable();
             $table->string('fsg_service_id_medical')->nullable();
             $table->string('fsg_service_id_community')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::table('falimly_suport_group_registers', function($table) {

            $table->dropColumn('prior_art')->nullable();
            $table->dropColumn('art')->nullable();
            $table->dropColumn('art_regimen_at_enrolment')->nullable();
            $table->dropColumn('Receiving_OI_Prophylaxis')->nullable();
            $table->dropColumn('Most_recent_CD4_Count')->nullable();
            $table->dropColumn('Most_recent_CD4_Count_date')->nullable();
            $table->dropColumn('Most_recent_WHO_Clinical_Stage')->nullable();
            $table->dropColumn('Tested_by_DNA_PCR')->nullable();
            $table->dropColumn('Date_of_DNA_PCR_Test')->nullable();
            $table->dropColumn('exp')->nullable();
            $table->dropColumn('Result_of_DNA_PCR_Test')->nullable();
            $table->dropColumn('fsg_service_id_medical')->nullable();
            $table->dropColumn('fsg_service_id_community')->nullable();
             
        });
    }
}
