@section('styles')
    @vite('resources/js/carousel.js')
@endsection


<div class="carousel">
    <div class="carousel-container">
        <div class="carousel-track">
            @foreach($booksOnMain as $book)
                <div class="carousel-slide">
                    <a href="/book/{{ $book->id }}">
                        <img src="{{ $book->cover_image ?? '/images/default-book.jpg' }}"
                             alt="{{ $book->title }}"
                             class="slide-image">
                        <div class="slide-overlay">
                            <div class="book-info">
                                <h3 class="book-title">{{ $book->title }}</h3>
                                <p class="book-author">{{ $book->author->name }}</p>
                                <div class="book-rating">
                            <span class="stars">
                                @for($i = 1; $i <= 5; $i++)
                                    @if($i <= floor($book->rating ?? 0))
                                        ★
                                    @else
                                        ☆
                                    @endif
                                @endfor
                            </span>
                                    <span class="rating-number">{{ number_format($book->rating ?? 0, 1) }}</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>

        <button class="carousel-btn prev">‹</button>
        <button class="carousel-btn next">›</button>

        <div class="carousel-dots">
            @foreach($booksOnMain as $index => $book)
                <span class="dot {{ $index === 0 ? 'active' : '' }}"></span>
            @endforeach
        </div>
    </div>
</div>
