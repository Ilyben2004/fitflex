<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Client;
use Faker\Factory as Faker;

class ClientsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create 10 fake clients
        $faker = Faker::create();
        for ($i = 0; $i < 10; $i++) {
            Client::create([
                'first_name' => $faker->firstName,
                'last_name' => $faker->lastName,
                'date_birth' => $faker->date,
                'phone_number' => $faker->phoneNumber,
                'end_date' => $faker->dateTimeBetween('-1 year', '+1 year'),
                'picture_file' => $faker->imageUrl(),
                'id_gym' =>$i+1, // Assuming you have 5 gyms
            ]);
        }
    }
}
