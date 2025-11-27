import '../css/carousel.scss'

document.addEventListener('DOMContentLoaded', function () {
    const track = document.querySelector('.carousel-track');
    const slides = Array.from(track.children);
    const nextButton = document.querySelector('.carousel-btn.next');
    const prevButton = document.querySelector('.carousel-btn.prev');
    const dotsContainer = document.querySelector('.carousel-dots');
    const dots = Array.from(dotsContainer.children);

    let currentIndex = 0;
    const slideWidth = slides[0].getBoundingClientRect().width;

    // Функция перехода к слайду
    function goToSlide(index) {
        track.style.transform = `translateX(-${slideWidth * index}px)`;
        currentIndex = index;
        updateDots();
    }

    // Обновление активного дота
    function updateDots() {
        dots.forEach((dot, index) => {
            if (index === currentIndex) {
                dot.classList.add('active');
            } else {
                dot.classList.remove('active');
            }
        });
    }

    // Клик по следующему слайду
    nextButton.addEventListener('click', () => {
        if (currentIndex < slides.length - 1) {
            goToSlide(currentIndex + 1);
        } else {
            goToSlide(0); // Вернуться к первому
        }
    });

    // Клик по предыдущему слайду
    prevButton.addEventListener('click', () => {
        if (currentIndex > 0) {
            goToSlide(currentIndex - 1);
        } else {
            goToSlide(slides.length - 1); // К последнему
        }
    });

    // Клик по дотам
    dots.forEach((dot, index) => {
        dot.addEventListener('click', () => {
            goToSlide(index);
        });
    });
});
