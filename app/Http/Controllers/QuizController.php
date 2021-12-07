<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Traits\Template;

/**
 * Class QuizController
 * @package App\Http\Controllers
 */
class QuizController extends Controller
{

    use Template;
    private $name = 'quizzes';

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $quizzes = Quiz::paginate();

        return view('quiz.index', compact('quizzes'))
            ->with('i', (request()->input('page', 1) - 1) * $quizzes->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $quiz = new Quiz();
        $categories = Category::pluck('description', 'id');
        return view('quiz.create', compact('quiz', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validamos todas las reglas del modelo
        request()->validate(Quiz::$rules);
        //asignamos todos los datos del formulario a una variable
        $quizz = $request->all();
        //movemos su respectiva imagen
        $quizz['image'] = QuizController::moveImage($request, $this->name);
        //Creamos el quizz
        $quiz = Quiz::create($quizz);
        return redirect()->route('questions.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $quiz = Quiz::find($id);
        //si no trae nada genere un error
        if(empty($quiz))return view('errors.404');

        return view('quiz.show', compact('quiz'));
    }
    /*
    * Return list of quizzes for list on home
    */

    public function showHome()
    {
        $quizzes = Quiz::all();
        //para no repetir las categorias
        $values = QuizController::uniqueCategories($quizzes);
        return view('home', compact('quizzes', 'values'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $quiz = Quiz::find($id);
        $categories = Category::pluck('description', 'id');
        return view('quiz.edit', compact('quiz', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Quiz $quiz
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Quiz $quiz)
    {
        //validamos todas las reglas del modelo
        request()->validate(Quiz::$rules);
        //asignamos todos los datos del formulario a una variable
        $quizz = $request->all();
        //movemos su respectiva imagen
        $quizz['image'] = QuizController::moveImage($request, $this->name);
        //Actualizamos el quizz
        $quiz->update($quizz);

        return redirect()->route('quizzes.index')
            ->with('success', 'Quiz updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $quiz = Quiz::find($id)->delete();

        return redirect()->route('quizzes.index')
            ->with('success', 'Quiz deleted successfully');
    }
}
