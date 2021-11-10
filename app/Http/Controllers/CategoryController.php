<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Question;
use Illuminate\Http\Request;

class CategoryController extends Controller{
  public function index(){
  }

  public function find($id){
    $questions = Category::find($id);
    $returnView = [];
//    dd($questions);
    return view('quizz', ['categoria' => $questions['description']]);
  }
}
