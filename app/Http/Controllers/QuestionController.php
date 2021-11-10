<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuestionController extends Controller
{

    public function index()
    {
        $questions = \DB::table('question')
            ->join('category', 'category.id', '=', 'question.id')
            ->select('question.*', 'category.description')
            ->get();
        return view('home', compact('questions'));
    }

    public static function view(){
      
    }

}
