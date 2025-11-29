@extends('layouts.app')

@section('styles')
    @vite('resources/css/authorization.scss')
    @vite(('resources/css/blurCircles.scss'))
    @vite('resources/css/authBranding.scss')
    @vite('resources/css/loginForm.scss')
    @vite('resources/css/registerForm.scss')
@endsection

@section('scripts')
    @vite('resources/js/authForm.js')
@endsection

@section('content')
    <div class="auth-fullpage">
        @include('components.blurCircles')

        <div class="auth-split-container">
            @include('components.authBranding')

            <div class="auth-right-section">
                <div class="auth-glass-card">
                    <div class="auth-tabs">
                        <button class="auth-tab active" data-tab="login">
                            Вход
                        </button>
                        <button class="auth-tab" data-tab="register">
                            Регистрация
                        </button>
                    </div>

                    @include('components.loginForm')
                    @include('components.registerForm')
                </div>
            </div>
        </div>
    </div>
@endsection

