<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;
use Faker\Factory as faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $faker = Faker::create('id_ID');

        $writersData = [
            [
                'name' => 'Raka Putra Wicaksono',
                'specialist' => 'Spesialis Interactive Multimedia',
                'image_url' => 'assets/raka.png',
            ],
            [
                'name' => 'Bia Mecca Annisa',
                'specialist' => 'Spesialis Data Science',
                'image_url' => 'assets/bia.png',
            ],
            [
                'name' => 'Abi Firmansyah',
                'specialist' => 'Spesialis Network Security',
                'image_url' => 'assets/abi.png',
            ],
        ];

        foreach ($writersData as $writerData) {
            Writer::create([
                'name' => $writerData['name'],
                'specialist' => $writerData['specialist'],
                'image_url' => $writerData['image_url'],
            ]);
        }
    }
}
