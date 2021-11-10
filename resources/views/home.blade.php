@extends('adminlte::page')

@section('title', 'Home')

@section('content')
    @csrf
    @if(!Auth::user())
        @foreach ($questions as $question)
            <h5 class="font-weight-bold">{{ $question->category->description }}</h5>
            <div class="card-group">
                @include('layouts.suggestion')
            </div>
        @endforeach
    @endif
@endsection
