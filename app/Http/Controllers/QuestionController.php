<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Question;
use Illuminate\Http\Request;
use App\Traits\Template;

/**
 * Class QuestionController
 * @package App\Http\Controllers
 */
class QuestionController extends Controller
{

    use Template;
    private $name = 'questions';

    public function indexHome()
    {
        $questions = Question::paginate();
        return view('home', compact('questions'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::paginate();

        return view('question.index', compact('questions'))
        ->with('i', (request()->input('page', 1) - 1) * $questions->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $question = new Question();
        $quizzes = Quiz::pluck('description', 'id');
        return view('question.create', compact('question', 'quizzes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validamos las reglas del modelo
        request()->validate(Question::$rules);
        //asignamos todos los datos del formulario a una variable
        $quest = $request->all();
        //Movemos la imagen
        $quest['image'] = QuestionController::MoveImage($request, $this->name);
        //create one question
        $question = Question::create($quest);

        return redirect()->route('questions.index')
        ->with('success', 'Question created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $question = Question::find($id);
        //si no trae nada genere un error
        if(empty($question))return view('errors.404');

        return view('question.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $question = Question::find($id);
        $quizzes = Quiz::pluck('description', 'id');
        return view('question.edit', compact('question', 'quizzes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Question $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        //validamos las regla del modelo
        request()->validate(Question::$rules);
        //asignamos todos los datos del formulario a una variable
        $quest = $request->all();
        //Movemos la imagen
        $quest['image'] = QuestionController::MoveImage($request, $this->name);
        //update one question
        $question->update($quest);
        return redirect()->route('questions.index')->with('success', 'Question updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $question = Question::find($id)->delete();

        return redirect()->route('questions.index')
        ->with('success', 'Question deleted successfully');
    }


}
