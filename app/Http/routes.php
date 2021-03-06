<?php


Route::get('/', function() {
	return "docs <a href='https://github.com/rizasabuncu/atolye15-filmapi'>here</a>";
});

/* Search */
Route::get('v1/search','GetController@search');

/* Add */
Route::get('v1/add/film','AddController@addFilm');
Route::get('v1/add/actor','AddController@addActor');
Route::get('v1/add/genre','AddController@addGenre');
Route::get('v1/add/director','AddController@addDirector');

/* Update */
Route::get('v1/update/film','UpdateController@updateFilm');
Route::get('v1/update/actor','UpdateController@updateActor');
Route::get('v1/update/genre','UpdateController@updateGenre');
Route::get('v1/update/director','UpdateController@updateDirector');

/* Delete */
Route::get('v1/delete/genre','DeleteController@deleteGenre');
Route::get('v1/delete/film','DeleteController@deleteFilm');
Route::get('v1/delete/actor','DeleteController@deleteActor');
Route::get('v1/delete/director','DeleteController@deleteDirector');

/* Other */
Route::get('v1/generate/key','KeyController@generateKey');