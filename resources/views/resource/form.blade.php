<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('category_id') }}
            {{ Form::text('category_id', $resource->category_id, ['class' => 'form-control' . ($errors->has('category_id') ? ' is-invalid' : ''), 'placeholder' => 'Category Id']) }}
            {!! $errors->first('category_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

        <div class="form-group">
            {{ Form::file('route', ['accept' => 'image/* ' . ($errors->has('route') ? ' is-invalid' : '')])}}
            @error('route')
                <div class="">
                    <p class="text-danger">{{ $message }}</p>
                </div>
            @enderror
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
