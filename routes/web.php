<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\AnswerController;
use App\Http\Controllers\QuizController;
use App\Http\Controllers\QuizesController;
use App\Http\Controllers\ResourceController;

//sign in with nickname
Route::get('/', function(){
    return view('auth.start');
});
Route::post('/', [QuizController::class, 'showHome']);
//Window of home
Route::get('home', [QuizController::class, 'showHome']);
//for users
Route::get('register', [UserController::class, 'registerIndex'])->middleware('auth');
Route::post('register', [UserController::class, 'crearStore']);
//Con middleware controlamos que sin un inicio de sesion esta pantalla no pueda crear ningun usuario
Route::get('login', [UserController::class, 'loginIndex'])->name('login');
Route::post('login', [UserController::class, 'loginStore']);
Route::post('logout', [UserController::class, 'logout']);
//categories
Route::get('issues/{id}', [CategoryController::class, 'show']);
Route::resource('categories', CategoryController::class)->middleware('auth');

//questions
Route::resource('questions', QuestionController::class)->middleware('auth');
//Answers
Route::resource('answers', AnswerController::class)->middleware('auth');
//Quizzes
Route::resource('quizzes', QuizController::class)->middleware('auth');
Route::get('quizz/{id}', [QuizesController::class, 'quizz']);
Route::post('starting', [QuizesController::class, 'start']);
//Resources for categories
Route::get('assets', [ResourceController::class, 'indexDefault']);
Route::resource('resources', ResourceController::class)->middleware('auth');
