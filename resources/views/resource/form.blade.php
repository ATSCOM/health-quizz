<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('category') }}
            {{ Form::select('category_id', $categories, null,['class' => 'form-control select2' . ($errors->has('category_id') ? ' is-invalid' : '')]) }}
            {!! $errors->first('category_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

        <div class="form-group">
            {{ Form::file('route', [($errors->has('route') ? ' is-invalid' : '')])}}
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
