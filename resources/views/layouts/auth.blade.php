<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore - Авторизация</title>
    @vite(['resources/css/app.scss'])
    @vite('resources/css/authHeader.scss')
    @yield('styles')
    @stack('styles')
    <style>
        body {
            overflow-x: hidden;
            overflow-y: auto;
        }
    </style>
</head>

<body>
<div class="page-wrapper">
    @include('components.authHeader')

    <main class="main-content">
        @yield('content')
    </main>
</div>

@yield('scripts')
@stack('scripts')
</body>
</html>
