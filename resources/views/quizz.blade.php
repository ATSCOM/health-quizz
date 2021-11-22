@extends('adminlte::page')

@section('title')
    {{ $quizs->description ?? 'Quizz' }}
@endsection

@section('content')

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
                        <td>1 de 3</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-12 col-md-6">
                    <p class="font-weight-bold">¿Cuál es la famosa serie que aprece en la siguiente imagen?</p>
                    <img src="{{ asset('/storage/images/zpx5yzSUg7yndK4tUbwkxeu2GKwT2yj1nALq5cwc.png') }}" class="img-fluid card-img-top" alt="" width="50%">
                </div>
                <div class="col-12 col-md-6">
                    <p class="font-weight-bold">Seleccione una opción:</p>

                    <a class="btn btn-primary btn-lg btn-block" href=""> Los Simpson</a>
                    <a class="btn btn-primary btn-lg btn-block" href=""> Rick and morty</a>
                    <a class="btn btn-primary btn-lg btn-block" href=""> Futurama</a>
                    <a class="btn btn-primary btn-lg btn-block" href=""> Dragon ball</a>

                    <div class="form-floating mt-3">
                        <textarea class="form-control" placeholder="Justifique su respuesta" id="floatingTextarea"></textarea>
                      </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-3">
                    <a class="btn btn-secondary btn-lg btn-block" href=""> Atras</a>
                </div>
                <div class="col-md-6 mt-3">
                    <a class="btn btn-secondary btn-lg btn-block" href=""> Siguiente</a>
                </div>
            </div>
        </div>
    </div>

@endsection
