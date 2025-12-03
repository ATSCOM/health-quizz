@extends('adminlte::page')

@section('title', 'Home')

@section('content')
    @csrf
    @if (!Auth::user())
        @foreach ($values as $val)
            <h5 class="font-weight-bold">{{ $val->description ?? '' }}</h5>
            <div class="card-group">
                @include('layouts.suggestion')
            </div>
        @endforeach
    @else
        @include('layouts.admin')
    @endif
@endsection
