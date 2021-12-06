<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Quiz;
use App\Models\Question;
use App\Models\Answer;
use Illuminate\Support\Facades\DB;

class QuizesController extends Controller
{
    /**
     * Return view of 'question' in principal page with a message of greet
     */

    public function quizz($id)
    {
        $quizs = Quiz::find($id);
        //si no trae nada genere un error
        if (empty($quizs)) return view('errors.404');
        $cants = Question::where('quiz_id', $id)->count();
        return view('quiz.show', compact('cants', 'id'));
    }

    public function start(Request $request)
    {
        //si no trae nada genere un error
        $idQuizz = $request['idQuiz'];
        if (empty($idQuizz)) return view('errors.404');
        //Busque todas las preguntas
        $questions = Question::where('quiz_id', '=', $idQuizz)->get();
        //validaciones del step
        $idQuestion = !empty($request['idQuestion']) ? $request['idQuestion'] : 0;
        $responseUser = $request['responseUser'];
        $response = null;
        $question = null;
        $step = $request['step'];
        if (!empty($responseUser) && $step != '1') {
            $result = DB::select('select * from answers where id = ? and value = ?', [$responseUser, 1]);
            $question = Question::where('id', $idQuestion)->first();
            $response = $result ? 'Correcto, ' : 'Incorrecto, ';
            $response .= $question['justify'];
        }
        if(is_null($response)){
            $question = Question::where([
                ['quiz_id', '=', $idQuizz],
                ['id', '>', $idQuestion]
            ])->first();
        }
        $queryOptions = Answer::where('question_id', $question->id)->get();
        $options = array();
        foreach ($queryOptions as $option) {
            unset($option['value']);
            unset($option['question_id']);
            array_push($options, $option);
        }
        shuffle($options);
        $question['options'] = $options;
        $ids = [1];
        return view('quiz.quizzes.quizz', compact('ids', 'question', 'response'));
    }
}
