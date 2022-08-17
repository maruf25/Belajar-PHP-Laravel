<?php

namespace App\Models;

class Post
{
   private static $blog_posts = [
        [
            "tittle" => "Judul Pertama",
            "slug" => "judul-pertama",
            "penulis" => "Jajang Suhendra",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis amet minus vitae dignissimos minima consequuntur 
            quos porro culpa nostrum dolore fuga nihil nesciunt, officiis eius sunt accusamus commodi, repudiandae quo perspiciatis. 
            Ipsam, itaque qui quam distinctio voluptate ducimus, cum tenetur mollitia commodi sapiente, temporibus laboriosam a veritatis in ut consequuntur?"
        ],
        [
            "tittle" => "Judul Kedua",
            "slug" => "judul-kedua",
            "penulis" => "Mario Sujana",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis amet minus vitae dignissimos minima consequuntur 
            quos porro culpa nostrum dolore fuga nihil nesciunt, officiis eius sunt accusamus commodi, repudiandae quo perspiciatis. 
            Ipsam, itaque qui quam distinctio voluptate ducimus, cum tenetur mollitia commodi sapiente, temporibus laboriosam a veritatis in ut consequuntur?"
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    } 

    public static function find($slug){
        $posts = static::all();
        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug',$slug);
    }
}
