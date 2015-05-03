<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class KisilerCreate extends Migration {

	
	public function up()
	{
		/*
		Kişiler (adı, doğrum tarihi, fotoğrafı, cinsiyet, biyografi, filmografi(1))
		*/

		Schema::create('actors', function(Blueprint $table) {

			$table->increments('id');
			$table->string('name');
			$table->string('born');
			$table->string('photo');
			$table->string('gender');
			$table->text('bio');
			$table->timestamps();


		});
	}


	public function down()
	{
		Schema::drop('actors');
	}

}
