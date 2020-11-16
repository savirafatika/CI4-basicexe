<?php

namespace App\Controllers\Admin;
// tambahkan admin untuk merujuk ke folder admin

use App\Controllers\BaseController;
// gunakan use alamat\conreoller\basenya agar extends file yg ditunjuk tidak error.

class Users extends BaseController
{
   public function index()
   {
      echo 'Controller Users Method Index yang ada di dalam folder / namespace Admin';
   }

   //--------------------------------------------------------------------

}
