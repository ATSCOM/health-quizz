@extends('layouts.app')

@section('template_title')
    {{ $answer->name ?? 'Show Answer' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Answer</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('answers.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Description:</strong>
                            {{ $answer->description }}
                        </div>
                        <div class="form-group">
                            <strong>Value:</strong>
                            {{ $answer->value }}
                        </div>
                        <div class="form-group">
                            <strong>Question Id:</strong>
                            {{ $answer->question_id }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
