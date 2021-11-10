@extends('adminlte::page')

@section('title', 'Home')

@section('content')
Bienvenido al Quizz {{$categoria ?? 'as'}}
@endsection
