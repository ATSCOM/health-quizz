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
                    <form class="">
                        @csrf
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <p class="font-weight-bold">¿Cuál es la famosa serie que aprece en la siguiente imagen?</p>
                                <img src="{{ asset('/storage/images/zpx5yzSUg7yndK4tUbwkxeu2GKwT2yj1nALq5cwc.png') }}" class="img-fluid card-img-top" alt="" width="50%">
                            </div>
                            <div class="col-12 col-md-6">
                                <p class="font-weight-bold">Seleccione una opción:</p>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following text input">
                                    </div>
                                    </div>
                                    <label class="form-control" for="customControlValidation1">Los Simpson</label>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following text input">
                                    </div>
                                    </div>
                                    <label class="form-control" for="customControlValidation1">Rick and morty</label>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following text input">
                                    </div>
                                    </div>
                                    <label class="form-control" for="customControlValidation1">Futurama</label>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following text input">
                                    </div>
                                    </div>
                                    <label class="form-control" for="customControlValidation1">Dragon ball</label>
                                </div>

                                <div class="form-floating mt-3">
                                    <textarea class="form-control" placeholder="Justifique su respuesta" id="floatingTextarea"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mt-3">
                                <button type="submit" class="btn btn-success btn-lg btn-block" hidden> Terminar intento</button>
                            </div>
                            <div class="col-md-6 mt-3">
                                <a class="btn btn-secondary btn-lg btn-block" href=""> Siguiente</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
