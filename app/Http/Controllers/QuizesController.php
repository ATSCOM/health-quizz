<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Quiz;
use App\Models\Question;
use App\Models\Answer;

class QuizesController extends Controller
{
    /**
    * Return view of 'question' in principal page with a message of greet
    */

    public function quizz($id){
        $quizs = Quiz::find($id);
        //si no trae nada genere un error
        if(empty($quizs))return view('errors.404');
        $cants = Question::where('quiz_id', $quizs->id)->count();
        return view('quiz.show', compact('cants','id'));
    }

    public function start(Request $request){
        //si no trae nada genere un error
        if(empty($_POST['sabe']))return view('errors.404');
        //por el momento esta variable no es necesaria
        $ids = ['1', '2'];

        return view('quiz.quizzes.quizz', compact('ids'));
    }

}
