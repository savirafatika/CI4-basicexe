<?php

namespace App\Controllers;

use App\Models\PeopleModel;

class Peoples extends BaseController
{
   protected $peopleModel;
   public function __construct()
   {
      $this->peopleModel = new PeopleModel();
   }

   public function index()
   {
      $currentPage = $this->request->getVar('page_people') ? $this->request->getVar('page_people') : 1;

      $keyword = $this->request->getVar('keyword');
      if ($keyword) {
         $people = $this->peopleModel->search($keyword);
      } else {
         $people = $this->peopleModel;
      }

      $data = [
         'title' => 'List of Peoples',
         // 'people' => $this->peopleModel->findAll()
         'people' => $people->paginate(7, 'people'),
         'pager' => $this->peopleModel->pager,
         'currentPage' => $currentPage
      ];
      return view('people/index', $data);
   }

   // tutup class
}
