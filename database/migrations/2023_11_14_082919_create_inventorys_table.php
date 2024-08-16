<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInventorysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventorys', function (Blueprint $table) {
            $table->id();
            $table->string('wompart_num')->unique();
            $table->string('wom_description');
            $table->string('wom_po');
            $table->string('category_name');
            $table->string('wom_serial')->nullable();
            $table->string('durometer')->nullable();
            $table->string('compound')->nullable();
            $table->timestamp('cure_date')->nullable();
            $table->timestamp('expiration_date')->nullable();
            $table->string('where_used');
            $table->string('location');
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table');
    }
}
