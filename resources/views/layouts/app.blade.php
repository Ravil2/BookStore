<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>BookStore</title>
    @vite(['resources/css/app.scss', 'resources/js/search.js'])
    @vite('resources/css/toast.scss')
    @yield('styles')
    @stack('styles')
</head>

<body>
<div class="page-wrapper">
    @include('components.header')

    <main class="main-content">
        @yield('content')
    </main>

    @include('components.footer')
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
