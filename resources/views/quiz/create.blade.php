@extends('adminlte::page')

@section('title')
    Create Quiz
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <div class="float-left">
                            <a class="btn btn-primary" href="{{ route('categories.create') }}"> Category</a>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('quizzes.index') }}"> Show</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('quizzes.store') }}"  role="form" enctype="multipart/form-data">
                            @csrf

                            @include('quiz.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
