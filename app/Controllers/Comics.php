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
      // session();
      $data = [
         'title' => 'Add Comic',
         'validation' => \Config\Services::validation()
      ];
      return view('comics/create', $data);
   }

   public function save()
   {
      // validasi input
      if (!$this->validate([
         // 'title' => 'required|is_unique[comic.title]'
         'title' => [
            'rules' => 'required|is_unique[comic.title]',
            'errors' => [
               'required' => '{field} comic title is required.',
               'is_unique' => '{field} comic titles are already registered.'
            ]
         ],
         'author' => 'required',
         'publisher' => 'required',
         'cover' => 'required'
      ])) {
         $validation = \Config\Services::validation();
         return redirect()->to('/comics/create')->withInput()->with('validation', $validation);
      }

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

   public function delete($id)
   {
      $this->comicModel->delete($id);
      session()->setFlashdata('message', 'Comic have been Deleted!');
      return redirect()->to('/comics');
   }

   public function edit($slug)
   {
      $data = [
         'title' => 'Edit Comic',
         'validation' => \Config\Services::validation(),
         'comic' => $this->comicModel->getComic($slug)
      ];
      return view('comics/edit', $data);
   }

   public function update($id)
   {
      // cek judul
      $komikLama = $this->comicModel->getComic($this->request->getVar('slug'));
      if ($komikLama['title'] == $this->request->getVar('title')) {
         $rule_title = 'required';
      } else {
         $rule_title = 'required|is_unique[comic.title]';
      }

      // validasi input
      if (!$this->validate([
         // 'title' => 'required|is_unique[comic.title]'
         'title' => [
            'rules' => $rule_title,
            'errors' => [
               'required' => '{field} comic title is required.',
               'is_unique' => '{field} comic titles are already registered.'
            ]
         ],
         'author' => 'required',
         'publisher' => 'required',
         'cover' => 'required'
      ])) {
         $validation = \Config\Services::validation();
         return redirect()->to('/comics/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
      }

      $slug = url_title($this->request->getVar('title'), '-', true);
      $this->comicModel->save([
         'id' => $id,
         'title' => $this->request->getvar('title'),
         'slug' => $slug,
         'author' => $this->request->getvar('author'),
         'publisher' => $this->request->getvar('publisher'),
         'cover' => $this->request->getvar('cover')
      ]);

      session()->setFlashdata('message', 'Comic have been Changed!');

      return redirect()->to('/comics');
   }

   // tutup class
}
