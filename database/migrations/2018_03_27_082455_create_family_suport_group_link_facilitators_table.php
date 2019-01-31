<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFamilySuportGroupLinkFacilitatorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_suport_group_link_facilitators', function (Blueprint $table) {
            $table->timestamps();
            $table->integer('fs_group_id')->unsigned();
            $table->integer('lf_id')->unsigned();

            $table->foreign('fs_group_id')->references('id')->on('family_suport_groups')->onUpdate('cascade')->onDelete('cascade');

            $table->foreign('lf_id')->references('id')->on('link_facilitators')->onUpdate('cascade')->onDelete('cascade');

            $table->primary(['fs_group_id', 'lf_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('family_suport_group_link_facilitators');
    }
}
