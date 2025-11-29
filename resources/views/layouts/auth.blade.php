<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>BookStore - Авторизация</title>
    @vite(['resources/css/app.scss'])
    @vite('resources/css/authHeader.scss')
    @vite('resources/css/toast.scss')
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

@include('components.toast')

@vite('resources/js/toast.js')
@yield('scripts')
@stack('scripts')

<script>
    document.addEventListener('DOMContentLoaded', () => {
        @if(session('success'))
        toast.success('{{ session('success') }}');
        @endif

        @if(session('error'))
        toast.error('{{ session('error') }}');
        @endif

        @if($errors->any())
        @foreach($errors->all() as $error)
        toast.error('{{ $error }}');
        @endforeach
        @endif
    });
</script>
</body>
</html>
