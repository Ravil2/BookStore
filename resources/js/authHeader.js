document.addEventListener('DOMContentLoaded', () => {
    const userBtn = document.querySelector('.header-user-btn');
    const userMenu = document.querySelector('.header-user-menu');

    if (userBtn && userMenu) {
        userBtn.addEventListener('click', (e) => {
            e.preventDefault();
            userMenu.classList.toggle('active');
        });

        document.addEventListener('click', (e) => {
            if (!userMenu.contains(e.target)) {
                userMenu.classList.remove('active');
            }
        });
    }
});
