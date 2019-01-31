<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFamilySupportGroupRegisterFollowupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_support_group_register_followups', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('fsg_number',20)->nullable();
            $table->string('appoint_date',20)->nullable();
            $table->string('visit_date',20)->nullable();
            $table->string('hiv_status',20)->nullable();
            $table->string('medical_services_accessed')->nullable();
            $table->string('community_services_accessed')->nullable();
            $table->string('family_planning_methods')->nullable();
            $table->string('coments')->nullable();
            $table->integer('fsgr_id')->unsigned();            
            $table->foreign('fsgr_id')->references('id')->on('falimly_suport_group_registers')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('family_support_group_register_followups');
    }
}
