@extends('layouts.app')

@section('styles')
    @vite('resources/css/book.scss')
    @vite('resources/css/reviews.scss')
@endsection

@section('content')
    <div class="book-page">
        <section class="book-main">
            <div class="book-container">

                <div class="book-cover-section">
                    <div class="cover-wrapper">
                        <img src="{{ $book->cover_image ?? '/images/default-book.jpg' }}"
                             alt="{{ $book->title }}"
                             class="book-cover-image">
                        <div class="cover-overlay"></div>
                    </div>
                </div>

                <div class="book-info-section">
                    <div class="book-main-header">
                        <h1 class="book-main-title">{{ $book->title }}</h1>
                        <div class="book-badge">Книга</div>
                    </div>

                    <div class="book-meta">
                        <div class="meta-item">
                            <span class="meta-label">Автор</span>
                            <span class="meta-separator"></span>
                            <span class="meta-value">{{ $book->author->name }}</span>
                        </div>
                        <div class="meta-item">
                            <span class="meta-label">Издательство</span>
                            <span class="meta-separator"></span>
                            <span class="meta-value">{{ $book->publisher->name }}</span>
                        </div>
                    </div>

                    <div class="book-stats-row">
                        <div class="stat-box">
                            <div class="stat-icon stat-icon-rating"></div>
                            <div class="stat-content">
                                <div class="stat-label">Рейтинг</div>
                                <div class="stat-value">{{ number_format($book->rating, 1) }}</div>
                            </div>
                        </div>
                        <div class="stat-box">
                            <div class="stat-icon stat-icon-views"></div>
                            <div class="stat-content">
                                <div class="stat-label">Просмотры</div>
                                <div class="stat-value">{{ number_format($book->views) }}</div>
                            </div>
                        </div>
                    </div>

                    <div class="book-description">
                        <h3 class="description-title">Описание</h3>
                        <p class="description-text">{{ $book->description }}</p>
                    </div>

                    <div class="book-actions">
                        <div class="price-block">
                            <span class="price-label">Цена</span>
                            <span class="price-value">{{ number_format($book->price, 0) }} $</span>
                        </div>

                        <button class="buy-button">
                            <span class="buy-button-glow"></span>
                            <span class="buy-button-text">Купить книгу</span>
                        </button>
                    </div>
                </div>

            </div>
        </section>

        @include('components.reviews')
    </div>
@endsection
