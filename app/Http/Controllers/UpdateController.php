<?php 

namespace App\Http\Controllers;

use Input;
use DB;
use Request;
use Response;

use App\Actor;
use App\Film;
use App\Genre;
use App\Director;
use App\Key;

class UpdateController extends Controller {



	public function updateFilm() {


		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$film = Film::find(Input::get('id')); // zorunlu

			$title = Input::get('title',false);
			$day = Input::get('day',false);
			$month = Input::get('month',false);
			$year = Input::get('year',false);
			$desc = Input::get('desc',false);
			$genreGet = Input::get('genre',false);
			$directorGet = Input::get('director',false);
			$imdb = Input::get('imdb',false);

			if ($title) {
				$film->title = $title;
			}
			if ($day) {
				$film->releaseDay = $day;

			}
			if ($month) {
				$film->releaseMonth = $month;

			}
			if ($year) {
				$film->releaseYear = $year;

			}
			if ($desc) {
				$film->description = $desc;
			}

			if($genreGet) { 
				$genre = Genre::where('genre',Input::get('genre'))->get();
				$genreId = $genre[0]->id;
				$film->genre = $genreId;
			}

			if($directorGet) { 
				$director = Director::where('name',Input::get('director'))->get();
				$directorId = $director[0]->id;
				$film->director = $directorId;

			}

			if($imdb) {
				$film->imdb = $imdb;
			}		

			if($film->update()) {
				return Response::json(['result' => 'success'],200);
			} else {
				return Response::json(['result' => 'failed'],200);
			}
		}
	}

	public function updateActor() {

		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$actor = Actor::find(Input::get('id')); // zorunlu
			$name = Input::get('name',false);
			$born = Input::get('born',false);
			$photo = Input::get('photo',false);
			$gender = Input::get('gender',false);
			$bio = Input::get('bio',false);

			if ($name) {
				$actor->name = $name;
			}
			if ($born) {
				$actor->born = $born;
			}
			if ($photo) {

				$actor->photo = $photo;

			}
			if ($gender) {
				$actor->gender = $gender;
			} 

			if ($bio) {
				$actor->bio = $bio;
			}


			if($actor->update()) {
				return Response::json(['result' => 'success','id' => $actor->id],200);
			} else {
				return Response::json(['result' => 'failed'],200);
			}
		}	


	}

	public function updateGenre() {

		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$genre = Genre::find(Input::get('id')); //zorunlu

			$genre->genre = Input::get('genre',false);

			if($genre->update()) {
				return Response::json(['result' => 'success','id' => $genre->id],200);
			} else {
				return Response::json(['result' => 'failed'],200);
			}		
		}

	}

	public function updateDirector() {

		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$Director = Director::find(Input::get('id'));
			$name = Input::get('name',false);
			$born = Input::get('born',false);
			$photo = Input::get('photo',false);
			$gender = Input::get('gender',false);
			$bio = Input::get('bio',false);

			if ($name) {
				$Director->name = $name;
			}
			if ($born) {
				$Director->born = $born;
			}
			if ($photo) {

				$Director->photo = $photo;

			}
			if ($gender) {
				$Director->gender = $gender;
			} 

			if ($bio) {
				$Director->bio = $bio;
			}

			if($Director->update()) {
				return Response::json(['result' => 'success','id' => $Director->id],200);
			} else {
				return Response::json(['result' => 'failed'],200);
			}
		}		

	}



}

