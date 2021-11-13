<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('route') }}
            {{ Form::text('route', $resource->route, ['class' => 'form-control' . ($errors->has('route') ? ' is-invalid' : ''), 'placeholder' => 'Route']) }}
            {!! $errors->first('route', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('category_id') }}
            {{ Form::text('category_id', $resource->category_id, ['class' => 'form-control' . ($errors->has('category_id') ? ' is-invalid' : ''), 'placeholder' => 'Category Id']) }}
            {!! $errors->first('category_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>