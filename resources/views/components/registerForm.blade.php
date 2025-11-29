<div class="auth-form-container" data-content="register">
    <form method="POST" action="{{ route('auth.register') }}" class="auth-form register-form">
        @csrf

        <div class="form-group">
            <label for="reg-name">Имя</label>
            <input
                id="reg-name"
                type="text"
                name="name"
                placeholder="Ваше имя"
                required
            >
        </div>

        <div class="form-group">
            <label for="reg-email">Email</label>
            <input
                id="reg-email"
                type="email"
                name="email"
                placeholder="example@mail.com"
                required
            >
        </div>

        <div class="form-group">
            <label for="reg-password">Пароль</label>
            <input
                id="reg-password"
                type="password"
                name="password"
                placeholder="Минимум 8 символов"
                required
            >
        </div>

        <div class="form-group">
            <label for="reg-password_confirmation">Повторите пароль</label>
            <input
                id="reg-password_confirmation"
                type="password"
                name="password_confirmation"
                placeholder="Повторите пароль"
                required
            >
        </div>

        <button type="submit" class="auth-button">
            Зарегистрироваться
        </button>
    </form>
</div>
