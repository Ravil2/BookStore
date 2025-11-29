<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    public function index()
    {
        return view('pages.authorization');
    }

    public function showLoginForm()
    {
        return view('components.loginForm');
    }

    public function showRegisterForm()
    {
        return view('components.registerForm');
    }

    public function login(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6',
        ], [
            'email.required' => 'Введите email',
            'email.email' => 'Некорректный email',
            'password.required' => 'Введите пароль',
            'password.min' => 'Пароль должен быть минимум 6 символов',
        ]);

        if (!auth()->attempt($validated)) {
            return back()->withErrors([
                'email' => 'Неверный email или пароль'
            ])->withInput($request->only('email'));
        }

        $user = auth()->user();
        $token = JWTAuth::fromUser($user);

        session(['auth_token' => $token]);

        return redirect()->route('home')->with('success', 'Добро пожаловать, ' . $user->name . '!');
    }

    public function register(Request $request)
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:100'],
            'email' => ['required', 'string', 'email', 'max:100', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ], [
            'name.required' => 'Введите имя',
            'email.required' => 'Введите email',
            'email.email' => 'Некорректный email',
            'email.unique' => 'Этот email уже зарегистрирован',
            'password.required' => 'Введите пароль',
            'password.min' => 'Пароль должен быть минимум 8 символов',
            'password.confirmed' => 'Пароли не совпадают',
        ]);

        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
        ]);

        $token = JWTAuth::fromUser($user);
        auth()->login($user);

        session(['auth_token' => $token]);

        return redirect()->route('home')->with('success', 'Регистрация успешна! Добро пожаловать, ' . $user->name . '!');
    }

    public function logout()
    {
        auth()->logout();
        session()->forget('auth_token');

        return redirect()->route('home')->with('success', 'Вы успешно вышли из системы');
    }
}
