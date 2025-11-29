class ToastNotification {
    constructor() {
        this.container = document.getElementById('toast-container');
        if (!this.container) {
            this.container = document.createElement('div');
            this.container.id = 'toast-container';
            document.body.appendChild(this.container);
        }
    }

    show(message, type = 'info', title = '', duration = 5000) {
        const toast = this.createToast(message, type, title);
        this.container.appendChild(toast);

        // Auto remove
        if (duration > 0) {
            setTimeout(() => {
                this.remove(toast);
            }, duration);
        }

        return toast;
    }

    createToast(message, type, title) {
        const toast = document.createElement('div');
        toast.className = `toast toast--${type}`;

        const icon = this.getIcon(type);
        const toastTitle = title || this.getDefaultTitle(type);

        toast.innerHTML = `
            <div class="toast-icon">${icon}</div>
            <div class="toast-content">
                <div class="toast-title">${toastTitle}</div>
                <div class="toast-message">${message}</div>
            </div>
            <button class="toast-close" aria-label="Закрыть">
                <svg width="12" height="12" viewBox="0 0 12 12" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round">
                    <path d="M1 1L11 11M11 1L1 11"/>
                </svg>
            </button>
        `;

        // Click to close
        toast.addEventListener('click', () => this.remove(toast));

        return toast;
    }

    remove(toast) {
        toast.classList.add('toast-removing');
        setTimeout(() => {
            if (toast.parentNode) {
                toast.parentNode.removeChild(toast);
            }
        }, 300);
    }

    getIcon(type) {
        const icons = {
            success: '✓',
            error: '✕',
            warning: '⚠',
            info: 'ℹ'
        };
        return icons[type] || icons.info;
    }

    getDefaultTitle(type) {
        const titles = {
            success: 'Успешно',
            error: 'Ошибка',
            warning: 'Внимание',
            info: 'Информация'
        };
        return titles[type] || titles.info;
    }

    success(message, title = 'Успешно', duration = 5000) {
        return this.show(message, 'success', title, duration);
    }

    error(message, title = 'Ошибка', duration = 5000) {
        return this.show(message, 'error', title, duration);
    }

    warning(message, title = 'Внимание', duration = 5000) {
        return this.show(message, 'warning', title, duration);
    }

    info(message, title = 'Информация', duration = 5000) {
        return this.show(message, 'info', title, duration);
    }
}

window.toast = new ToastNotification();
