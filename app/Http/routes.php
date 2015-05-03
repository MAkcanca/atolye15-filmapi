<?php


Route::get('/', 'WelcomeController@index');

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

/* Delete */
Route::get('v1/delete/genre','DeleteController@deleteGenre');
Route::get('v1/delete/film','DeleteController@deleteFilm');
Route::get('v1/delete/actor','DeleteController@deleteActor');

/* Other */
Route::get('v1/generate/key','KeyController@generateKey');