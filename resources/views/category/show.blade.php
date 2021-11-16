@extends('adminlte::page')

@section('title', 'Categories')

@section('content')
    @csrf
    @if(!Auth::user())
        <h5 class="font-weight-bold">{{ $category->description }}</h5>
        <div class="card-group">
            @include('layouts.suggestion')
        </div>
    @endif
@endsection
