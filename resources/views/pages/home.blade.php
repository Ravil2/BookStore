@extends('layouts.app')

@section('styles')
    @vite('resources/js/home.js')
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
                <button class="show-all"><a href="/books">Показать все</a></button>
            </div>
        </div>

@endsection
