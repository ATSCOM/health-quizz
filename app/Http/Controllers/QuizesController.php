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
        $questions = Question::get()->where('quiz_id', $quizs->id);
        $ids = array();
        foreach ($questions as $question) {
            $ejemplo = $question->id;
            array_push($ids, $ejemplo);
        }
        $answers = Answer::all();
        return view('quizz1', compact('ids','questions'));
    }
}
