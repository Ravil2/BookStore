<a href="/book/{{ $book->id }}" class="book-card">
    <div class="card-image-wrapper">
        <img src="{{ $book->cover_image ?? '/images/default-book.jpg' }}"
             alt="{{ $book->title }}"
             class="card-image">
        <div class="card-overlay">
            <div class="card-info">
                <h3 class="card-title">{{ $book->title }}</h3>
                <p class="card-author">{{ $book->author->name }}</p>
                <div class="card-rating">
                    <span class="card-stars">
                        @for($i = 1; $i <= 5; $i++)
                            @if($i <= floor($book->rating ?? 0))
                                ★
                            @else
                                ☆
                            @endif
                        @endfor
                    </span>
                    <span class="card-rating-number">{{ number_format($book->rating ?? 0, 1) }}</span>
                </div>
            </div>
        </div>
    </div>
</a>
