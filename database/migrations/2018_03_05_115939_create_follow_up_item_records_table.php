<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFollowUpItemRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('follow_up_item_records', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('date_recorded',20)->nullable();
            $table->string('month_recorded',3)->nullable();
            $table->string('year_recorded',4)->nullable();
            $table->text('comment')->nullable();

            $table->integer('follow_up_item_id')->unsigned();
            $table->foreign('follow_up_item_id')->references('id')->on('follow_up_items')->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('follow_up_item_records');
    }
}
