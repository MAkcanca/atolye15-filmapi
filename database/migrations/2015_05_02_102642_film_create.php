<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FilmCreate extends Migration {

	public function up()
	{
		Schema::create('films', function(Blueprint $table)
		{
			/*

			Film (adı, çıkış tarihi, açıklama, IMDB Puanı, tür(3), oyuncular(2), yönetmen(2))
		
			*/

			$table->increments('id');
			$table->string('title');
			$table->integer('releaseDay');
			$table->integer('releaseMonth');
			$table->integer('releaseYear');
			$table->text('description');
			$table->string('imdb');
			$table->integer('genre');
			$table->integer('director');
			$table->timestamps();



		});

	}


	public function down()
	{
		Schema::drop('films');
	}

}
