<header class="header">
    <h1 class="header-title">
        <a href="/">
            BookStore
        </a>
    </h1>

    <x-search :books="$books ?? collect()" :q="isset($q) ? $q : request('q')" />

    <nav class="header-list">
        <a href="/">Главная</a>
        <a href="/catalog">Каталог</a>
        <a href="/cart">Корзина</a>
        <a href="/auth">Авторизация</a>
    </nav>
</header>
