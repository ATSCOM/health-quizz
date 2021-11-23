@extends('adminlte::page')

@section('title')
    {{ $quizs->description ?? 'Quizz start' }}
@endsection

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a class="btn btn-primary btn-lg btn-block" href=""> Comenzar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
