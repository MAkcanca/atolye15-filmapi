<?php namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;


class Film extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'films';

	public function actors()
	{	

		return $this->belongsToMany('App\Actor', 'actions', 'film_id', 'actor_id');

	}

	public function genre()
	{	
		
		return $this->belongsToMany('App\Genre', 'films','id','genre');

	}

	public function directors()
	{	
		
		return $this->belongsToMany('App\Director', 'films','id','director');

	}


}
