<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\AnswerController;
use App\Http\Controllers\QuizController;

//sign in with nickname
Route::get('/', function(){
    return view('start');
});
Route::post('/', [QuizController::class, 'showHome']);
//Window of home
Route::get('home', [QuizController::class, 'showHome']);
//for users
//Route::get('category/{id}', [QuestionController::class, 'indexHome']);
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
//Quizzes
Route::resource('quizzes', QuizController::class);
Route::get('quizz/{id}', function () {
    return view('quizz');
});
