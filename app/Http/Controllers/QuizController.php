<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use Illuminate\Http\Request;

/**
 * Class QuizController
 * @package App\Http\Controllers
 */
class QuizController extends Controller
{
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
        return view('quiz.create', compact('quiz'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Quiz::$rules);

        $quiz = Quiz::create($request->all());

        return redirect()->route('quizzes.index')
            ->with('success', 'Quiz created successfully.');
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

        return view('quiz.show', compact('quiz'));
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

        return view('quiz.edit', compact('quiz'));
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
        request()->validate(Quiz::$rules);

        $quiz->update($request->all());

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
