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
        $_SESSION["cants"] = Question::where('quiz_id', $id)->count();
        $_SESSION["successfulQ"] = 0;
        //Pasamos el id de la ultima pregunta del quizz
        $endQuestion = Question::orderBy('id', 'desc')
                ->where('quiz_id', $id)
                ->first();
        $endId = !empty($endQuestion) ? $endQuestion->id : '';
        return view('quiz.show', compact('id', 'endId'));
    }

    public function start(Request $request)
    {
        //si no trae los ids pertinentes que genere un error
        $idQuizz = $request['idQuiz'];
        if (empty($idQuizz)) return view('errors.404');
        //endId es para identificar la ultima pregunta
        $endIdQuestion = $request['endIdQuestion'];
        //cants es para saber cuantas preguntas hay
        $cants = $request['cantQuestions'];
        if (empty($endIdQuestion) || empty($cants)) return view('errors.909');
        //validaciones del step
        $idQuestion = !empty($request['idQuestion']) ? $request['idQuestion'] : 0;
        $responseUser = $request['responseUser'];
        $response = null;
        $question = null;
        //Cantidad de preguntas correctas
        $successfulQ = $request['successfulQ'];
        $step = $request['step'];
        if (!empty($responseUser) && $step != '1') {
            $result = DB::select('select * from answers where id = ? and value = ?', [$responseUser, 1]);
            $question = Question::where('id', $idQuestion)->first();
            /*
            *   Si la respuesta es Incorrecta restamos a nuestra variable
            */
            if(!empty($result)){
                $successfulQ++;
                $response = 'Correcto, ';
            }
            else{
                $response = 'Incorrecto, ';
            }

            $response .= $question['justify'];
        }
        if(is_null($response)){
            $question = Question::where([
                ['quiz_id', '=', $idQuizz],
                ['id', '>', $idQuestion]
            ])->first();
        }
        /*
        *  traemos el id de la pregunta actual o le asignamos
        *  un valor q lo veo poco probable que se de en la base de datos
        */
        $findIdQuestion = !empty($question) ? $question->id : '9999999999';
        $ids = [1];
        if($findIdQuestion > $endIdQuestion || $findIdQuestion == '9999999999') {
            //Damos por terminado el cuestionario y mostramos los respectivos resultados
            return view('quiz.quizzes.quizz1', compact('cants', 'successfulQ'));
        } else {
            $question['options'] = $this->findAnswers($question->id);
            return view('quiz.quizzes.quizz', compact('ids', 'question', 'response', 'endIdQuestion', 'cants', 'successfulQ'));
        }
    }
    //buscamos las respuestas de la pregunta y las revolcamos
    public function findAnswers($id){
        $queryOptions = Answer::where('question_id', $id)->get();
        $options = array();
        foreach ($queryOptions as $option) {
            unset($option['value']);
            unset($option['question_id']);
            array_push($options, $option);
        }
        shuffle($options);
        return $options;
    }

}
