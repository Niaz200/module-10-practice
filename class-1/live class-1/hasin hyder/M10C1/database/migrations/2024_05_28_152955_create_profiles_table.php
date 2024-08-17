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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->string("first_name");
            $table->string("last_name");
            $table->string("phone_number");
            $table->string('country')->default("BD");
            $table->integer('age')->default(18);
            $table->date("birthdate");
            $table->timestamps();


            $table->index('first_name');
            $table->index('last_name');
            $table->unique('phone_number');

            $table->foreignId('user_id')->constrained()->onDelete('cascade');


            // duti field niye index
            // $table->index('first_name', 'last_name');  
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
