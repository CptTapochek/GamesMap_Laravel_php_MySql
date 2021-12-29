<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterTableUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->tinyInteger('is_admin')->default(0);
            $table->tinyInteger('is_moderator')->default(0);
            $table->tinyInteger('is_user')->default(1);
            $table->tinyInteger('is_baned')->default(0);
            $table->Integer('Notify')->default(0);
            $table->text('about_user')->nullable();
            $table->string('avatar')->nullable();
            $table->tinyInteger('theme')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('is_admin');
            $table->dropColumn('is_moderator');
            $table->dropColumn('is_user');
            $table->dropColumn('is_baned');
            $table->dropColumn('about_user');
            $table->dropColumn('avatar');
        });
    }
}
