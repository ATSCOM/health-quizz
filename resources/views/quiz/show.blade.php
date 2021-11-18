@extends('adminlte::page')

@section('template_title')
    {{ $quiz->name ?? 'Show Quiz' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Quiz</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('quizzes.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Description:</strong>
                            {{ $quiz->description }}
                        </div>
                        <div class="form-group">
                            <strong>Category:</strong>
                            {{ $quiz->category->description }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
