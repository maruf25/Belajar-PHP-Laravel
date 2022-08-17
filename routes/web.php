<?php

use App\Http\Controllers\AdminCategoryController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostsController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Menggunakan Closure

Route::get('/', function () {
    return view('Home',[
        "title" => "Home Page",
        "active" => "home"
    ]);
});

Route::get('/about', function () {
    return view('About',[
        "title" => "About Page",
        "active" => "about",
        "name" => "Ma'ruf Fiardy",
        "email" => "maruf25@coba.com",
        "gambar" => "antangin.png"
    ]);
});


// Menggunakan Controller

Route::get('/blog', [PostController::class,'index']);

// Halaman single post
Route::get('/blog/{post:slug}', [PostController::class,'show']);

Route::get('/categories', function() {
    return view('categories',[
        "title" => "Post Categories",
        "active" => "categories",
        "categories" => Category::all()
    ]);
});

// Route::get('/login',[LoginController::class,'index'])->middleware('guest')->name('login');
// Route::post('/login',[LoginController::class,'authenticate']);
// Route::post('/logout',[LoginController::class,'logout']);

// Coba Group Controller Route Fitur Laravel 9
Route::controller(LoginController::class)-> group(function(){
    Route::get('/login','index')->middleware('guest')->name('login');
    Route::post('/login','authenticate');
    Route::post('/logout','logout');
});


Route::get('/register',[RegisterController::class,'index'])->middleware('guest');
Route::post('/register',[RegisterController::class,'store']);

Route::get('/dashboard',function(){
    return view('dasboard.index');
})->middleware('auth');

Route::get('/dashboard/post/checkSlug',[DashboardPostsController::class,'checkSlug']);
Route::resource('/dashboard/posts', DashboardPostsController::class)->middleware('auth');

Route::resource('/dashboard/categories',AdminCategoryController::class)->except('show')->middleware('Admin');
