<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\AnswerController;

//sign in with nickname
Route::get('/', function(){
    return view('start');
});
Route::post('/', [QuestionController::class, 'indexHome']);
//Window of home
Route::get('home', [QuestionController::class, 'indexHome']);
//for users
Route::get('quizz/{id}', [CategoryController::class, 'find']);
Route::get('register', [RegisterController::class, 'create']);
Route::post('register', [RegisterController::class, 'store']);
Route::get('login', [SessionsController::class, 'create']);
Route::post('login', [SessionsController::class, 'store']);
Route::post('logout', [SessionsController::class, 'logout']);
//categories
Route::resource('categories', CategoryController::class);
//questions
Route::resource('questions', QuestionController::class);
//Answers
Route::resource('answers', AnswerController::class);
