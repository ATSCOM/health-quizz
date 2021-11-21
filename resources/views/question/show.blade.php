@extends('adminlte::page')

@section('title')
    {{ $question->quiz->description ?? 'Show Question' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Question</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('questions.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Descriptions:</strong>
                            {{ $question->descriptions }}
                        </div>
                        <div class="form-group">
                            <strong>Justify:</strong>
                            {{ $question->justify }}
                        </div>
                        <div class="form-group">
                            <strong>Quiz:</strong>
                            {{ $question->quiz->description }}
                        </div>
                        <div class="form-group">
                            <strong>Image:</strong>
                            @if ($question->image == "NULL" || $question->image == "")
                                <p>Image not found.</p>
                            @else
                                <img src="{{ asset("$question->image") }}" class="img-fluid rounded d-block" alt="Image get quiz {{ $question->quiz->description }}" width="50%">
                            @endif

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
