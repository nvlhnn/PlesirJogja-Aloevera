<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
    	// for($i = 1; $i <= 100; $i++){

    	//       // insert data ke table pegawai menggunakan Faker
    	// 	DB::table('comments')->insert([
    	// 		'user_id' => 2,
    	// 		'place_id' => $faker->numberBetween(2,11),
    	// 		'rating' => $faker->numberBetween(1,5),
        //         'content' => 'bagus sekali'
        //         ]);

        // }
        
        for($i = 1; $i <= 100; $i++){

            // insert data ke table pegawai menggunakan Faker
          DB::table('tickets')->insert([
              'user_id' => 2,
              'place_id' => $faker->numberBetween(2,11),
              'kode_pembayaran' => $faker->bothify('##??#??#?##?'), // 'Hello 42jz',
              'kode_tiket' => $faker->bothify('##??#??#?##?'),
               'created_at' => $faker->dateTimeBetween('-7 months', '+6 months')
            //   dateTimeBetween($startDate = '-30 years', $endDate = 'now', $timezone = null)
              ]);

      }
    }
}
