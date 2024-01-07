<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        //create horaire table
        Schema::create('horaires', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 255);
            $table->time('start_time');
            $table->time('end_time');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //fais le contraire
        Schema::dropIfExists('horaires');
    }
};
