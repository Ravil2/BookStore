<div class="books-grid">
    @foreach($booksCards as $book)
        @include('components.card', ['book' => $book])
    @endforeach
</div>
