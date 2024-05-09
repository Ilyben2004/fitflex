<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Payment;
use Faker\Factory as Faker;

class PaymentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create 10 fake payments
        $faker = Faker::create();
        for ($i = 0; $i < 100; $i++) {
            Payment::create([
                'paid_price' => $faker->randomFloat(2, 10, 1000), // Random price between 10 and 1000
                'id_user' => $faker->numberBetween(1, 10), // Assuming you have users with IDs from 1 to 10
            ]);
        }
    }
}
