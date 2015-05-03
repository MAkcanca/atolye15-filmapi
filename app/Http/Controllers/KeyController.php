<?php 

namespace App\Http\Controllers;

use App\Key;
use Hash;

class KeyController extends Controller {

	public function generateKey() {
		$key = Hash::make(time());
		$keyDB = new Key;
		$keyDB->key = $key;

		if ($keyDB->save()) {
		 	return $key."<br><b>Veritabanına yazıldı.</b>"; // ilginç bir şekilde \n çalışmadı. <br> candır <3
		 }
		}



	}

