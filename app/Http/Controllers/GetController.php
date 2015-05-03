<?php 

namespace App\Http\Controllers;

use Input;
use DB;
use Request;
use Response;

use App\Actor;
use App\Film;
use App\Genre;
use app\Action;


class GetController extends Controller {


	public function search()
	{
		
			$films = Film::with('actors');

			$title = Input::get('title',false);
			$genre = Input::get('genre',false);
			$year = Input::get('year',false);
			$imdb = Input::get('imdb',false);
			$actor = Input::get('actor',false);
			$director = Input::get('director',false);
			$pagination = Input::get('max',false);

			if($title){ // film ismi 
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('title',$title);
			}

			if($genre){ // film türü
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('genres.genre','=',$genre);

			}

			if($year) { // çıkış yılı
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('releaseYear',$year);
				
			}

			if ($imdb) { // imdb puanı
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('imdb',$imdb);
			}

			if ($actor) { // oyuncu (sanırım şuanlık 1 oyuncu filtreliyo :D )
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->join('actions','actions.film_id','=','films.id')
				->join('actors','actors.id','=','actions.actor_id')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('actors.name','=',$actor);
			}

			if($director) { // yonetmen kardeş
				$films->join('genres', 'genres.id', '=', 'films.genre')
				->join('directors','directors.id','=','films.director')
				->select('films.*','directors.name as director','genres.genre as genre')
				->where('directors.name','=',$director);

			}

			if($pagination) { // sayfalama
				$films->paginate($pagination);
			} else {
				$films->paginate(5);
			}

			return	Response::json($films->get(),200);
		}




	}
