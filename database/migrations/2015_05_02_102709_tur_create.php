<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TurCreate extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('genres', function(Blueprint $table) 
		{
			$table->increments('id');
			$table->string('genre');
			$table->timestamps();

		});

	}

	public function down()
	{
		Schema::drop('genres');
	}

}
