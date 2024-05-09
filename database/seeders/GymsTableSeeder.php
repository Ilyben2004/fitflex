<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Gym;
use Faker\Factory as Faker;


class GymsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 10; $i++) {
            Gym::create([
                'name' => $faker->company,
                'location' => $faker->address,
                'id_user'=>$i+1,
                'currency' => $faker->currencyCode,
            ]);
        }
    }
}