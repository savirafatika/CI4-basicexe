<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;

class OrangSeeder extends \CodeIgniter\Database\Seeder
{
   public function run()
   {
      // $data = [
      //    [
      //       'name'         => 'Savira Fatika',
      //       'address'      => 'Jl.Magelang No.56',
      //       'created_at'   => Time::now(),
      //       'updated_at'   => Time::now()
      //    ],
      //    [
      //       'name'         => 'Diah Indri',
      //       'address'      => 'Jl.Solo No.26',
      //       'created_at'   => Time::now(),
      //       'updated_at'   => Time::now()
      //    ],
      //    [
      //       'name'         => 'Nisa Karima',
      //       'address'      => 'Jl.Yogyakarta No.36',
      //       'created_at'   => Time::now(),
      //       'updated_at'   => Time::now()
      //    ]
      // ];

      $faker = \Faker\Factory::create('id_ID');
      for ($i = 0; $i < 100; $i++) {
         $data = [
            'name'         => $faker->name,
            'address'      => $faker->address,
            'created_at'   => Time::createFromTimestamp($faker->unixTime()),
            'updated_at'   => Time::now()
         ];
         $this->db->table('orang')->insert($data);
      }

      // Simple Queries
      // $this->db->query(
      //    "INSERT INTO orang (name, address, created_at, updated_at) VALUES(:name:, :address:, :created_at:, :updated_at:)",
      //    $data
      // );

      // Using Query Builder
      // $this->db->table('orang')->insertBatch($data);
   }
}
