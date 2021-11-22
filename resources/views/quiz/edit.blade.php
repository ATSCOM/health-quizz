@extends('adminlte::page')

@section('title')
    Update Quiz
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Update Quiz</span>
                        <div class="float-right">
                            <a href="{{ route('quizzes.index') }}" class="btn btn-primary btn-sm float-right" data-placement="left">
                                {{ __('Back') }}
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('quizzes.update', $quiz->id) }}"  role="form" enctype="multipart/form-data">
                            {{ method_field('PATCH') }}
                            @csrf

                            @include('quiz.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
