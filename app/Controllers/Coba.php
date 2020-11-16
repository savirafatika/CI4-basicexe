<?php

namespace App\Controllers;

class Coba extends BaseController
{
   public function index()
   {
      echo 'Controller Coba Method Index';
   }

   //kita bisa mengrim data nama pada url segment ke 3 dengan membuat variabel langsung di echo atau parameter di fungsi
   // jika parameter dengan request get tidak ada default value nya akan error
   public function about($nama = '', $umur = 0)
   {
      echo "My Name is $nama. umur $umur.";
   }

   //--------------------------------------------------------------------

}
