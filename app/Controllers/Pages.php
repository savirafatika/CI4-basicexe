<?php

namespace App\Controllers;

class Pages extends BaseController
{
   public function index()
   {
      $data = [
         'title' => 'Home',
         'test' => ['satu', 'dua', 'tiga']
      ];
      return view('pages/home', $data);
   }

   public function about()
   {
      $data = [
         'title' => 'About Me'
      ];
      return view('pages/about', $data);
   }

   public function contact()
   {
      $data = [
         'title' => 'Contact Us',
         'alamat' => [
            [
               'tipe' => 'Rumah',
               'alamat' => 'Jl. Magelang No.456',
               'kota' => 'Magelang'
            ],
            [
               'tipe' => 'Kantor',
               'alamat' => 'Jl. Yogyakarta No.6',
               'kota' => 'Yogyakarta'
            ]
         ]
      ];
      return view('pages/contact', $data);
   }
}
