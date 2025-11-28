@extends('layouts.app')

@section('styles')
    @vite('resources/css/card.scss')
    @vite('resources/css/catalog.scss')
    @vite('resources/css/filters.scss')
@endsection

@section('content')
    <section class="catalog-page">
        <div class="catalog-bg"></div>

        <div class="catalog-header">
            <div class="catalog-title-block">
                <p class="catalog-kicker">Каталог</p>
                <h1 class="catalog-title">Книги в нашем магазине:</h1>
                <p class="catalog-subtitle">
                    Подборка лучших произведений с рейтингами, отзывами и атмосферой.
                </p>
            </div>

            @include('components.fillters')
        </div>

        <div class="catalog-grid">
            @foreach($books as $book)
                @include('components.card', ['book' => $book])
            @endforeach
        </div>

        <div class="catalog-pagination">
            {{ $books->onEachSide(1)->links('components.pagination') }}
        </div>
    </section>
@endsection
