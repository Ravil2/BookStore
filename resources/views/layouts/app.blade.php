<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore</title>
    @vite(['resources/css/app.scss', 'resources/js/search.js'])
    @yield('styles')
    @stack('styles')
    @stack('scripts')
    @yield('scripts')
</head>

<body>
<div class="page-wrapper">
    @include('components.header')

    <main class="main-content">
        @yield('content')
    </main>

    @include('components.footer')
</div>
</body>
</html>
