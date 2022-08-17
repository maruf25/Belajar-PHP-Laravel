<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => "Ma'ruf Fiardy",
            'username' => 'maruf25',
            'email' => 'maruf25@gmail.com',
            'password' => bcrypt("password")
        ]);

        // User::create([
        //     'name' => 'Dody',
        //     'email' => 'dody@gmail.com',
        //     'password' => bcrypt("12345")
        // ]);


        Post::factory(20)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Desain',
            'slug' => 'web-desain'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        // Post::create([
        //     'title' => 'judul pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil itaque harum odio repellat temporibus nulla, totam ab tenetur iure quis, cumque vitae et perferendis? Iure iste voluptas sequi iusto pariatur.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, eius tempore deserunt quod, velit rerum voluptatibus maxime, illum a eaque asperiores laudantium reprehenderit? Neque dolores expedita tempora? Culpa itaque iste qui neque molestias accusantium alias ipsa porro, ipsum corrupti suscipit et quae voluptatem sint nam, nostrum repudiandae deserunt incidunt eum quod vitae quasi hic cupiditate officia. Eligendi vel ex tempore hic quia dolor harum, excepturi similique aliquid assumenda. Ad consequuntur, eveniet repellat rerum a at reprehenderit neque sint omnis, aut autem voluptates sit. Rerum dolore unde aut cumque ad nostrum, assumenda fugit officiis vero ipsum, doloribus at, praesentium pariatur facere?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil itaque harum odio repellat temporibus nulla, totam ab tenetur iure quis, cumque vitae et perferendis? Iure iste voluptas sequi iusto pariatur.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, eius tempore deserunt quod, velit rerum voluptatibus maxime, illum a eaque asperiores laudantium reprehenderit? Neque dolores expedita tempora? Culpa itaque iste qui neque molestias accusantium alias ipsa porro, ipsum corrupti suscipit et quae voluptatem sint nam, nostrum repudiandae deserunt incidunt eum quod vitae quasi hic cupiditate officia. Eligendi vel ex tempore hic quia dolor harum, excepturi similique aliquid assumenda. Ad consequuntur, eveniet repellat rerum a at reprehenderit neque sint omnis, aut autem voluptates sit. Rerum dolore unde aut cumque ad nostrum, assumenda fugit officiis vero ipsum, doloribus at, praesentium pariatur facere?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil itaque harum odio repellat temporibus nulla, totam ab tenetur iure quis, cumque vitae et perferendis? Iure iste voluptas sequi iusto pariatur.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, eius tempore deserunt quod, velit rerum voluptatibus maxime, illum a eaque asperiores laudantium reprehenderit? Neque dolores expedita tempora? Culpa itaque iste qui neque molestias accusantium alias ipsa porro, ipsum corrupti suscipit et quae voluptatem sint nam, nostrum repudiandae deserunt incidunt eum quod vitae quasi hic cupiditate officia. Eligendi vel ex tempore hic quia dolor harum, excepturi similique aliquid assumenda. Ad consequuntur, eveniet repellat rerum a at reprehenderit neque sint omnis, aut autem voluptates sit. Rerum dolore unde aut cumque ad nostrum, assumenda fugit officiis vero ipsum, doloribus at, praesentium pariatur facere?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul ke empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil itaque harum odio repellat temporibus nulla, totam ab tenetur iure quis, cumque vitae et perferendis? Iure iste voluptas sequi iusto pariatur.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, eius tempore deserunt quod, velit rerum voluptatibus maxime, illum a eaque asperiores laudantium reprehenderit? Neque dolores expedita tempora? Culpa itaque iste qui neque molestias accusantium alias ipsa porro, ipsum corrupti suscipit et quae voluptatem sint nam, nostrum repudiandae deserunt incidunt eum quod vitae quasi hic cupiditate officia. Eligendi vel ex tempore hic quia dolor harum, excepturi similique aliquid assumenda. Ad consequuntur, eveniet repellat rerum a at reprehenderit neque sint omnis, aut autem voluptates sit. Rerum dolore unde aut cumque ad nostrum, assumenda fugit officiis vero ipsum, doloribus at, praesentium pariatur facere?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }

};
