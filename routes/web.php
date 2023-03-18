<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

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

Route::middleware(['auth'])->group(function () {

    Route::get('/create', [PostController::class, 'create'])->name('post.create');
    Route::post('/store', [PostController::class, 'store'])->name('post.store');
    Route::get('/edit/{post_id}', [PostController::class, 'edit'])->name('post.edit');
    Route::post('/update/{post_id}', [PostController::class, 'update'])->name('post.update');
    Route::get('/delete/{post_id}', [PostController::class, 'destroy'])->name('post.delete');
});

Route::get('/show/{post_id}', [PostController::class, 'show'])->name('post.show');

Route::get('/', [PostController::class, 'index'])->name('post.index');
Route::get('/search', [SearchController::class, 'search'])->name('search');
Route::get('/aboutus', function () {
    return view('pages.about');
})->name('aboutus');
Route::get('/contact', function () {
    return view('pages.contact');
})->name('contact');



Route::get('/music/{cat_id}', [CategoryController::class, 'music'])->name('categories.music');
Route::get('/fashion/{cat_id}', [CategoryController::class, 'fashion'])->name('categories.fashion');
Route::get('/beautyhub/{cat_id}', [CategoryController::class, 'beautyhub'])->name('categories.beautyhub');
Route::get('/food/{cat_id}', [CategoryController::class, 'food'])->name('categories.food');
Route::get('/travel/{cat_id}', [CategoryController::class, 'travel'])->name('categories.travel');
Route::get('/business/{cat_id}', [CategoryController::class, 'business'])->name('categories.business');
Route::get('/news/{cat_id}', [CategoryController::class, 'news'])->name('categories.news');
Route::get('/technology/{cat_id}', [CategoryController::class, 'technology'])->name('categories.technology');
Route::get('/sports/{cat_id}', [CategoryController::class, 'sports'])->name('categories.sports');


Route::get('/login', [UserController::class, 'loginForm'])->name('login');
Route::post('/login', [UserController::class, 'login'])->name('login.store');
Route::get('/register', [UserController::class, 'registerForm'])->name('register');
Route::post('/register', [UserController::class, 'register'])->name('register.store');

Route::get('/logout', [UserController::class, 'logout'])->name('logout');


Route::get('/MyPosts', [AccountController::class, 'myposts'])->name('user.myposts');
