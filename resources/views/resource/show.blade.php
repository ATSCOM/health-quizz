@extends('adminlte::page')

@section('template_title')
    {{ $resource->name ?? 'Show Resource' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Resource</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('resources.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Category:</strong>
                            {{ $resource->category->description }}
                        </div>
                        <div class="form-group">
                            <strong>Route:</strong>
                            <img src="{{ asset("$resource->route") }}" class="img-fluid rounded d-block" alt="Image get quiz {{ $resource->category->description }}" width="50%">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
