<?php

namespace App\Controllers;

use App\Models\ComicModel;

class Comics extends BaseController
{
   protected $comicModel;
   public function __construct()
   {
      $this->comicModel = new ComicModel();
   }

   public function index()
   {
      $comic = $this->comicModel->findAll();
      $data = [
         'title' => 'List of Comics',
         'comic' => $comic
      ];

      // cara konek db tanpa model
      // $db = \Config\Database::connect();
      // $comic = $db->query("SELECT * FROM comic");
      // foreach ($comic->getResultArray() as $row) {
      //    d($row);
      // }

      // arahkan ke namespace komikmodel
      // $comicModel = new \App\Models\ComicModel();

      return view('comics/index', $data);
   }
}
