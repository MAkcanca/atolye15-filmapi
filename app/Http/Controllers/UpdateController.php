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

			$film = Film::find(Input::get('id'));
			$film->title = Input::get('title',false);
			$film->releaseDay = Input::get('day',false);
			$film->releaseMonth = Input::get('month',false);
			$film->releaseYear = Input::get('year',false);
			$film->description = Input::get('desc',false);

			if(Input::get('genre')) { 
				$genre = Genre::where('genre',Input::get('genre'))->get();
				$genreId = $genre[0]->id;
			}

			if(Input::get('director')) { 
				$director = Director::where('name',Input::get('director'))->get();
				$directorId = $director[0]->id;
			}

			$film->genre = $genreId;
			$film->imdb = Input::get('imdb',false);
			$film->director = $directorId;

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

			$actor = Actor::find(Input::get('id'));
			$actor->name = Input::get('name',false);
			$actor->born = Input::get('born',false);
			$actor->photo = Input::get('photo',false);
			$actor->gender = Input::get('gender',false);
			$actor->bio = Input::get('bio',false);

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


			$genre = Genre::find(Input::get('id'));
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
			$Director->name = Input::get('name',false);
			$Director->born = Input::get('born',false);
			$Director->photo = Input::get('photo',false);
			$Director->gender = Input::get('gender',false);
			$Director->bio = Input::get('bio',false);

			if($Director->update()) {
				return Response::json(['result' => 'success','id' => $Director->id],200);
			} else {
				return Response::json(['result' => 'failed'],200);
			}
		}		

	}



}

