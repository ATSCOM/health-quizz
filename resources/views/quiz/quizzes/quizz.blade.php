@extends('adminlte::page')

@section('title')
{{ $quizs->description ?? 'Quizz' }}
@endsection

@section('content')
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <form method="POST" action="{{ asset('starting') }}">
                    <input type="text" id="responseQuiz" name="responseUser" readonly hidden>
                    <input type="text" id="step" name="step" readonly value="{{ is_null($response) ? '0' : '1' }}" hidden>

                    @csrf
                    @include('quiz.template.quizz', ['question' => $question['descriptions'], 'options' => $question['options'], 'reason' => $response,'image' => $question['image']])
                    <input type="hidden" name="cantQuestions" value='{{ $cants }}'>
                    <input type="hidden" name="successfulQ" value='{{ $successfulQ }}'>
                    <input type="hidden" name="endIdQuestion" value="{{ $endIdQuestion }}">
                    <input type="hidden" name="idQuestion" value="{{ $question['id'] }}">
                    <input type="hidden" name="idQuiz" value="{{ $question['quiz_id'] }}">
                    <div class="row">
                        <div class="col-md-6 mt-3">
                            <a href="{{ asset('home') }}" class="btn btn-success btn-lg btn-block"> Cancelar intento</a>
                        </div>
                        <div class="col-md-6 mt-3">
                            <button class="btn btn-secondary btn-lg btn-block"> Siguiente</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

