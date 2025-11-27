<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Response;

/**
 * Контроллер страницы книг
 */
class HomeController extends Controller
{

    /**
     * Главная страница
     *
     * @return Response
     */
    public function index(): Response
    {
        $booksOnMain = Book::with(['author', 'publisher'])
            ->orderBy('views', 'desc')
            ->whereIn('id', [1, 2, 3, 4, 5])
            ->get();
        $booksCards = Book::with(['author', 'publisher'])
            ->orderBy('views', 'desc')
            ->whereNotIn('id', [1, 2, 3, 4, 5])
            ->get();
        return response()->view('pages.home', compact('booksOnMain', 'booksCards'));
    }
}
