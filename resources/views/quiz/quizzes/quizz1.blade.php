@extends('adminlte::page')

@section('title')
    {{ $quizs->description ?? 'Quizz' }}
@endsection

@section('css')

    <style>
        .caja-principal{
            width: 100%;
            background: rgb(95, 94, 94);
            color: #fff;
            border-radius: 1rem;
            display: flex;
            align-items: end;
        }

        .imagen{
            flex-shrink: 0;
            width: 150px;
        }

        .imagen img{
            vertical-align: middle;
        }

    </style>

@endsection

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center text-bold">Estadísticas</h4>
                    <div class="row">
                        <div class="col-12 col-md-6 mt-3">
                            <div class="caja-principal">
                                <div class="imagen">
                                    <img src="{{ asset('images/pages/success.png') }}" alt=""><span class="text-bold">{{ $successfulQ }}</span>
                                </div>

                                <div class="texto text-bold">
                                    <h3 class="texto text-bold">Respuestas correctas</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mt-3">
                            <div class="caja-principal">
                                <div class="imagen">
                                    <img src="{{ asset('images/pages/errors.png') }}" alt=""><span>{{ ($cants - $successfulQ) }}</span>
                                </div>
                                <div class="texto text-bold">
                                    <h3 class="texto text-bold">Respuestas incorrectas</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mt-3">
                            <a href="{{ asset('home') }}" class="btn btn-outline-info btn-lg btn-block"> Terminar revisión</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
