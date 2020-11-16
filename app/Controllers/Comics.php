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
      // $comic = $this->comicModel->findAll();
      $data = [
         'title' => 'List of Comics',
         'comic' => $this->comicModel->getComic()
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

   public function detail($slug)
   {
      $data = [
         'title' => 'Detail Comics',
         'comic' => $this->comicModel->getComic($slug)
      ];

      // jika komik tidak ada di tabel
      if (empty($data['comic'])) {
         throw new \CodeIgniter\Exceptions\PageNotFoundException('Comic Title ' . $slug . 'is Not Found.');
      }

      return view('comics/detail', $data);
   }

   public function create()
   {
      $data = [
         'title' => 'Add Comic'
      ];
      return view('comics/create', $data);
   }

   public function save()
   {
      $slug = url_title($this->request->getVar('title'), '-', true);
      $this->comicModel->save([
         'title' => $this->request->getvar('title'),
         'slug' => $slug,
         'author' => $this->request->getvar('author'),
         'publisher' => $this->request->getvar('publisher'),
         'cover' => $this->request->getvar('cover')
      ]);

      session()->setFlashdata('message', 'New comics have been Added!');

      return redirect()->to('/comics');
   }

   // tutup class
}
