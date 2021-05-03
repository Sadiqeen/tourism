<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\TouristAttraction;
use Faker\Generator as Faker;

// factory(App\TouristAttraction::class, 20)->create();

$factory->define(TouristAttraction::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'slug' => $faker->sentence(),
        'body' => $faker->text(),
        'cover_image' => 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png',
        'location' => $faker->url,
        'category_id' => function () {
            return App\Category::inRandomOrder()->first()->id;
        },
        'province_id' => function () {
            return App\Province::inRandomOrder()->first()->id;
        },
    ];
});
