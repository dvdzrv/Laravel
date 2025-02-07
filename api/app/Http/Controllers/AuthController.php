<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request) {
        $fields = $request->validate([
            'name' => 'required',
            'email' => 'nullable|email|unique:users',
            'password' => 'required',
        ]);

        $user = User::create($fields);

        $token = $user->createToken($request->name);

        return [
            'user' => $user,
            'token' => $token->plainTextToken,
        ];
    }
    public function login(Request $request) {
        $fields = $request->validate([
            'name' => 'required',
            'email' => 'nullable|email',
            'password' => 'required',
        ]);
        $user = User::where('name', $request->name)->first();
        if ($user and Hash::check($request->password, $user->password)) {
            $token = $user->createToken($user->name);
            return [
                'user' => $user,
                'token' => $token->plainTextToken,
            ];
        } else {
            return [
                'error' => 'Wrong name or password',
            ];
        }
    }
    public function logout(Request $request) {
        $request->user()->tokens()->delete();
        return [
            'message' => 'Logged out',
        ];
    }
}
