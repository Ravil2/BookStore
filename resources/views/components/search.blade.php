<form action="{{ route('book.catalog') }}" method="GET" class="header-search">
    <div class="header-search__field">
        <input
            type="text"
            name="q"
            placeholder="Найти книгу по названию или автору..."
            autocomplete="off"
        >
        <div class="search-icon search-icon-main"></div>
    </div>
</form>
