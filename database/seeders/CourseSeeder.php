<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Course;
use App\Models\Writer;
use Faker\Factory as faker;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $writers = Writer::all();

        $coursesData = [
            [
                'title' => 'Machine Learning',
                'image_url' => 'assets/machine_learning.jpg',
                'category_id' => 1,
            ],
            [
                'title' => 'Deep Learning',
                'image_url' => 'assets/deep_learning.jpeg',
                'category_id' => 1,
            ],
            [
                'title' => 'Natural Language Processing',
                'image_url' => 'assets/natural_language_processing.jpg',
                'category_id' => 1,
            ],
            [
                'title' => 'Software Security',
                'image_url' => 'assets/software_security.jpg',
                'category_id' => 2,
            ],
            [
                'title' => 'Network Administration',
                'image_url' => 'assets/network_administration.jpg',
                'category_id' => 2,
            ],
            [
                'title' => 'Popular Network Technology',
                'image_url' => 'assets/popular_network_technology.jpg',
                'category_id' => 2,
            ],
        ];

        foreach ($coursesData as $courseData) {
            Course::create([
                'title' => $courseData['title'],
                'description' => $faker->paragraph(10)."\n\n". $faker->paragraph(10),
                'writer_id' => $writers->random()->id,
                'category_id' => $courseData['category_id'],
                'image_url' => $courseData['image_url'],
            ]);
        }
    }
}
