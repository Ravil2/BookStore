<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class BookController extends Controller
{

    /**
     * Показать отдельную книгу с автором и издателем
     * @param $id
     * @return Response
     */
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

    /**
     * Показать список всех книг с сортировкой и пагинацией
     * @return Response
     */
    public function catalog(): Response
    {
        $sort = request('sort', 'new');
        $query = Book::with(['author', 'publisher']);
        switch ($sort) {
            case 'rating':
                $query->orderBy('rating', 'desc');
                break;
            case 'title':
                $query->orderBy('title', 'asc');
                break;
            case 'author':
                $query->join('authors', 'books.author_id', '=', 'authors.id')
                    ->orderBy('authors.name', 'asc')
                    ->select('books.*');
                break;
            case 'views':
                $query->orderBy('views', 'desc');
                break;
            default:
                $query->orderBy('id', 'desc');
        }
        $books = $query->paginate(12)->withQueryString();
        return response()->view('pages.catalog', compact('books', 'sort'));
    }

    //просмотры
    public function incrementViews($id)
    {

    }
}
