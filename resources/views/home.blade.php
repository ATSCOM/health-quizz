@extends('adminlte::page')

@section('title', 'Home')

@section('content')
    @csrf
    @if(!Auth::user())
        @foreach ($values as $val)
            <h5 class="font-weight-bold">{{ $val }}</h5>
            <div class="card-group">
                @include('layouts.suggestion')
            </div>
        @endforeach
    @endif
@endsection
