@extends('layouts.app')

@section('styles')
    @vite('resources/css/card.scss')
    @vite('resources/css/catalog.scss')
    @vite('resources/css/filters.scss')
@endsection

@section('content')
    <div class="catalog-cards">

        @include('components.fillters')

        @foreach($books as $book)
            @include('components.card', ['book' => $book])
        @endforeach
    </div>

    {{ $books->links() }}
@endsection
