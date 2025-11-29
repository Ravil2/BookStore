<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    public function index()
    {
        return view('pages.authorization');
    }

    /**
     * Показать страницу логина (GET)
     */
    public function showLoginForm()
    {
        return view('components.loginForm');
    }

    /**
     * Показать страницу регистрации (GET)
     */
    public function showRegisterForm()
    {
        return view('components.registerForm');
    }

    /**
     * Обработка логина (POST)
     */
    public function login(Request $request): JsonResponse
    {
        $validated = $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6',
        ]);

        if (!auth()->attempt($validated)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Неверный email или пароль'
            ], 401);
        }
        $user = auth()->user();
        $token = JWTAuth::fromUser($user);
        return response()->json([
            'status' => 'success',
            'user' => $user,
            'authorization' => [
                'token' => $token,
                'type' => 'bearer',
            ],
        ]);
    }

    /**
     * Регистрации (POST)
     */
    public function register(Request $request): JsonResponse
    {
        $validated = $request->validate([
            'name' => ['required', 'string', 'max:100'],
            'email' => ['required', 'string', 'email', 'max:100', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
        ]);
        $token = JWTAuth::fromUser($user);
        auth()->login($user);
        return response()->json([
            'status' => 'success',
            'message' => 'Пользователь успешно зарегистрирован',
            'user' => $user,
            'authorization' => [
                'token' => $token,
                'type' => 'bearer',
            ],
        ]);
    }
}
