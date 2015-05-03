<?php 

namespace App\Http\Controllers;

use Input;
use DB;
use Request;
use Response;

use App\Actor;
use App\Film;
use App\Genre;
use App\Key;

class DeleteController extends Controller {


	public function deleteFilm() {
		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$film = new Film;
			$film = Film::find(Input::get('id'));

			if($film->delete()) {
				return Response::json(['result' => 'success'],200);
			} else {
				return Response::json(['result' => 'failed'],200);

			}
		}
	}
	public function deleteGenre() {
		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$genre = new Genre;
			$genre = Genre::find(Input::get('id'));

			if($genre->delete()) {
				return Response::json(['result' => 'success'],200);
			} else {
				return Response::json(['result' => 'failed'],200);

			}
		}
	}

	public function deleteActor() {
		$keyControl = Key::where('key','=',Input::get('key',false))->firstOrFail()->key;

		if ($keyControl == Input::get('key',false)) {

			$actor = new Actor;
			$actor = Actor::find(Input::get('id'));

			if($actor->delete()) {
				return Response::json(['result' => 'success'],200);
			} else {
				return Response::json(['result' => 'failed'],200);

			}
		}
	}






}
