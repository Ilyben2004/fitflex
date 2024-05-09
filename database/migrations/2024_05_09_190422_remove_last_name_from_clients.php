<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveLastNameFromClients extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Remove the last_name column from the clients table
        Schema::table('clients', function (Blueprint $table) {
            $table->dropColumn('last_name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Add the last_name column back to the clients table
        Schema::table('clients', function (Blueprint $table) {
            $table->string('last_name')->nullable(); // Use the appropriate data type and options
        });
    }
}
