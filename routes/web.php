<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/book/{id}', [BookController::class, 'show'])->name('book.show');
Route::get('/catalog', [BookController::class, 'catalog'])->name('book.catalog');
Route::get('/search/books', [BookController::class, 'search'])->name('books.search');

