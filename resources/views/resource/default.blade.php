@extends('adminlte::page')

@section('title', 'Resources')

@section('content')
@csrf
    @foreach ($values as $val)
        <h5 class="font-weight-bold mt-3">{{ $val->description }}</h5>
        <div class="card-group">
            @include('resource.cards')
        </div>
    @endforeach
@endsection
