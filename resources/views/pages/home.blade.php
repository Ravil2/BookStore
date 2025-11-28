@extends('layouts.app')

@section('styles')
    @vite('resources/css/homePage.scss')
    @vite('resources/css/carousel.scss')
    @vite('resources/css/bookCards.scss')
    @vite('resources/css/card.scss')
@endsection

@section('scripts')
    @vite('resources/js/carousel.js')
@endsection


@section('content')
    <div class="home-page">
        <div class="home-carousel">
            <h1 class="main-title">Самые популярные книги</h1>
            @include('components.carousel', ['booksOnMain' => $booksOnMain])
        </div>

        <div class="home-sub">
            <h2 class="main-sub-title">Кучу произведений на любой вкус</h2>
            @include('components.bookCards', ['booksCards' => $booksCards])

            <div class="btn-wrapper">
                <button class="show-all"><a href="/catalog">Показать все</a></button>
            </div>
        </div>

@endsection
