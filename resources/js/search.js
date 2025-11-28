document.addEventListener('DOMContentLoaded', () => {
    const wrapper = document.querySelector('.header-search');
    if (!wrapper) return;

    const input = wrapper.querySelector('input[name="q"]');
    if (!input) return;

    const dropdown = document.createElement('div');
    dropdown.className = 'header-search__dropdown';
    wrapper.appendChild(dropdown);

    let timeout;

    function closeDropdown() {
        dropdown.innerHTML = '';
        dropdown.classList.remove('header-search__dropdown--open');
    }

    input.addEventListener('input', () => {
        clearTimeout(timeout);
        const q = input.value.trim();

        if (!q) {
            closeDropdown();
            return;
        }

        timeout = setTimeout(async () => {
            try {
                const res = await fetch(`/search/books?q=${encodeURIComponent(q)}`);
                const books = await res.json();

                if (!books.length) {
                    dropdown.innerHTML = '<div class="header-search__empty">Ничего не найдено</div>';
                    dropdown.classList.add('header-search__dropdown--open');
                    return;
                }

                dropdown.innerHTML = books.map(book => `
                    <a href="/book/${book.id}" class="header-search__item">
                        <div class="header-search__thumb">
                            <img src="${book.cover_image || '/images/default-book.jpg'}" alt="${book.title}">
                        </div>
                        <div class="header-search__info">
                            <h4 class="header-search__title">${book.title}</h4>
                            <p class="header-search__author">${book.author.name}</p>
                        </div>
                    </a>
                `).join('');

                dropdown.classList.add('header-search__dropdown--open');
            } catch (err) {
                console.error(err);
            }
        }, 300);
    });

    document.addEventListener('click', (e) => {
        if (!wrapper.contains(e.target)) {
            closeDropdown();
        }
    });
});
