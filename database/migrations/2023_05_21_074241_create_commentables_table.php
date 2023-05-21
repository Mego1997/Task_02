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
    Schema::create('commentables', function (Blueprint $table) {
        $table->id();
        $table->string('comment');
        $table->morphs('commentable');
        $table->unsignedBigInteger('parent_id')->nullable();
        $table->timestamps();

        $table->foreign('parent_id')->references('id')->on('commentables')->onDelete('cascade');
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('commentables');
    }
};
