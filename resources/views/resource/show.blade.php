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
                            <strong>Route:</strong>
                            {{ $resource->route }}
                        </div>
                        <div class="form-group">
                            <strong>Category Id:</strong>
                            {{ $resource->category_id }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
