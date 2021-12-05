@extends('adminlte::page')

@section('title')
{{ $quizs->description ?? 'Quizz' }}
@endsection

@section('content')
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th>Aciertos</th>
                            <th>Errores</th>
                            <th>Pregunta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>0</td>
                            <td>1 de {{ count($ids) }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ asset('starting') }}">
                    <input type="text" id="responseQuiz" name="responseUser" readonly hidden>
                    <input type="text" id="step" name="step" readonly value="{{ is_null($response) ? '0' : '1' }}" hidden>

                    @csrf
                    @include('quiz.template.quizz', ['question' => $question['descriptions'], 'options' => $question['options'], 'reason' => $response])
                    <input type="hidden" name="idQuestion" value="{{ $question['id'] }}">
                    <input type="hidden" name="idQuiz" value="{{ $question['quiz_id'] }}">
                    <div class="row">
                        <div class="col-md-6 mt-3">
                            <button type="button" class="btn btn-success btn-lg btn-block" id="prueba"> Terminar intento</button>
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