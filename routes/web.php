<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/book/{id}', [BookController::class, 'show'])->name('book.show');
Route::get('/catalog', [BookController::class, 'catalog'])->name('book.catalog');
Route::get('/search/books', [BookController::class, 'search'])->name('books.search');
Route::get('/auth', [AuthController::class, 'index'])->name('auth');
Route::get('/auth/login', [AuthController::class, 'showLoginForm'])->name('auth.login.page');
Route::get('/auth/register', [AuthController::class, 'showRegisterForm'])->name('auth.register.page');
Route::post('/auth/login', [AuthController::class, 'login'])->name('auth.login');
Route::post('/auth/register', [AuthController::class, 'register'])->name('auth.register');
