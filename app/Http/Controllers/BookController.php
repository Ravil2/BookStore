<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class BookController extends Controller
{

    //показать отдельную книгу с автором и издателем
    public function show($id): Response
    {
        $book = Book::with(['author', 'publisher'])
            ->where('id', $id)
            ->first();

        if (!$book) {
            abort(404);
        }

        return response()->view('pages.book', compact('book'));
    }

    //показать список всех книг с сортировкой и пагинацией
    public function catalog()
    {

    }

    //вернуть топ книг по рейтингу для главной
    public function topBooks()
    {

    }

    //поиск книг по названию, автору или издателю
    public function search(Request $request)
    {

    }

    //фильтры по цене, рейтингу, жанрам
    public function filter(Request $request)
    {

    }

    //просмотры
    public function incrementViews($id)
    {

    }
}
