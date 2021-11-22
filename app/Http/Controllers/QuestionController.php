<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

/**
 * Class QuestionController
 * @package App\Http\Controllers
 */
class QuestionController extends Controller
{

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
    request()->validate(Question::$rules);
    $quest = $request->all();
    //store img in table
    if($img = $request->file('image')->store('public/images/')){
        $quest['image'] = Storage::url($img);
    }
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
    request()->validate(Question::$rules);

    $quest = $request->all();
    //store img in table
    if($img = $request->file('image')->store('public/images/')){
        $quest['image'] = Storage::url($img);
    }
    //update one question
    $question->update($quest);

    return redirect()->route('questions.index')
      ->with('success', 'Question updated successfully');
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

  public static function view()
  {
  }
}
