<div class="auth-form-container active" data-content="login">
    <form method="POST" action="{{ route('auth.login') }}" class="auth-form login-form">
        @csrf

        <div class="form-group">
            <label for="login-email">Email</label>
            <input
                id="login-email"
                type="email"
                name="email"
                placeholder="example@mail.com"
                required
                autofocus
            >
        </div>

        <div class="form-group">
            <label for="login-password">Пароль</label>
            <input
                id="login-password"
                type="password"
                name="password"
                placeholder="••••••••"
                required
            >
        </div>

        <button type="submit" class="auth-button">
            Войти
        </button>
    </form>
</div>
