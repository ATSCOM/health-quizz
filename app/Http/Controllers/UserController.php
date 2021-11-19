<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    //retorne la vista del login del administrador
    public function loginIndex(){
        return view('auth.login');
    }
    //Vista para registrar usuarios administradores
    public function registerIndex(){
        return view('auth.register');
    }
    //Para crear la sesion del usuario administrador
    public function loginStore(Request $request)
    {
        if(Auth::attempt(request(['username', 'password'])) == false){
            return back()->withErrors([
                'message' => 'The username or password is incorrect, please try again'
            ]);
        }
        return redirect()->to('home');
    }
    //Para crear el usuario administrador
    public function crearStore(Request $request)
    {

        $this->validate(request(), [
            'username' => 'required',
            'password' => 'required|confirmed'
        ]);

        $use = User::create(request(['username', 'password']));

        Auth::login($use);
        /* alguna vista para el admin o user logeado */
        return redirect('/home');

    }
    //cerrar la sesion creada
    public function logout()
    {
        Session::flush();

        Auth::logout();

        return redirect('/');

    }

}
