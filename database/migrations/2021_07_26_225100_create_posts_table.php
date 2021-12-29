<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id')->unsigned();
            $table->string('title');
            $table->string('slug')->unique();
            $table->string('cover');
            $table->text('features')->nullable();
            $table->text('description');
            $table->string('screen_1')->nullable();
            $table->string('screen_2')->nullable();
            $table->string('screen_3')->nullable();
            $table->string('screen_4')->nullable();
            $table->string('screen_5')->nullable();
            $table->string('screen_6')->nullable();
            $table->string('trailer_1')->nullable();
            $table->string('trailer_2')->nullable();
            $table->text('dlc_list')->nullable();
            $table->text('torr_specification')->nullable();
            $table->text('torr_problems')->nullable();
            $table->string('torr_link_1')->nullable();
            $table->string('torr_link_2')->nullable();
            $table->string('torr_size_1')->nullable();
            $table->string('torr_size_2')->nullable();
            $table->string('torr_name_1')->nullable();
            $table->string('torr_name_2')->nullable();
            $table->integer('views')->unsigned()->default(0);
            $table->integer('rating')->default(0);
            $table->integer('count_comment')->unsigned()->default(0);
            $table->integer('downloads')->unsigned()->default(0);
            $table->string('key_words')->nullable();
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
        Schema::dropIfExists('posts');
    }
}
