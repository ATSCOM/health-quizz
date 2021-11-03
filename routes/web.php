<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\CategoryController;

//sign in with nickname
Route::get('/', function(){
    return view('start');
});
//Window of home
Route::get('/home', [QuestionController::class, 'index']);
//for users
Route::get('/register', [RegisterController::class, 'create'])
    ->name('register.index'
);
Route::post('/register', [RegisterController::class, 'store'])
    ->name('register.store'
);
Route::get('/login', [SessionsController::class, 'create'])
    ->name('login.index'
);
Route::post('/login', [SessionsController::class, 'store'])
    ->name('login.store'
);
Route::post('/logout', [SessionsController::class, 'logout'])
    ->name('login.logout'
);
