<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Question;
use Illuminate\Http\Request;

/**
 * Class AnswerController
 * @package App\Http\Controllers
 */
class AnswerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $answers = Answer::paginate();

        return view('answer.index', compact('answers'))
            ->with('i', (request()->input('page', 1) - 1) * $answers->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $answer = new Answer();
        $questions = Question::pluck('descriptions', 'id');
        return view('answer.create', compact('answer', 'questions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Answer::$rules);

        $answer = Answer::create($request->all());

        return redirect()->route('answers.index')
            ->with('success', 'Answer created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $answer = Answer::find($id);
        //si no trae nada genere un error
        if(empty($answer))return view('errors.404');

        return view('answer.show', compact('answer'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $answer = Answer::find($id);
        $questions = Question::pluck('descriptions', 'id');
        return view('answer.edit', compact('answer', 'questions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Answer $answer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Answer $answer)
    {
        request()->validate(Answer::$rules);

        $answer->update($request->all());

        return redirect()->route('answers.index')
            ->with('success', 'Answer updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $answer = Answer::find($id)->delete();

        return redirect()->route('answers.index')
            ->with('success', 'Answer deleted successfully');
    }
}
