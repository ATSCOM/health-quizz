@extends('adminlte::page')

@section('title')
    {{ $resource->category->description ?? 'Show Resource' }}
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
                            @if ($resource->route != "NULL" && $resource->route != "")
                                <img src="{{ asset("$resource->route") }}" class="img-fluid rounded d-block" alt="Image get quiz {{ $resource->category->description }}" width="50%">
                            @else
                                <p>Image not found.</p>
                            @endif
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
