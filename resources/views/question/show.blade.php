@extends('layouts.app')

@section('template_title')
    {{ $question->name ?? 'Show Question' }}
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
                            <strong>Category:</strong>
                            {{ $question->category->description }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
