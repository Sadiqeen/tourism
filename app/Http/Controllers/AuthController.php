<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use TCG\Voyager\Facades\Voyager;

class AuthController extends \TCG\Voyager\Http\Controllers\VoyagerAuthController
{
    public function login()
    {
        if ($this->guard()->user()) {
            return redirect()->route('voyager.dashboard');
        }

        return view('auth.login');
    }

    public function register()
    {
        if ($this->guard()->user()) {
            return redirect()->route('voyager.dashboard');
        }

        return view('auth.register');
    }

    public function postRegister(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|string',
            'password' => 'required|string|min:6',
            'password_confirmation' => 'required_with:password|same:password|min:6',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $credentials = $this->credentials($request);

        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
            return $this->sendLoginResponse($request);
        }
    }
}
