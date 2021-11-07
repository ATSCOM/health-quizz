<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('descriptions') }}
            {{ Form::text('descriptions', $question->descriptions, ['class' => 'form-control' . ($errors->has('descriptions') ? ' is-invalid' : ''), 'placeholder' => 'Descriptions']) }}
            {!! $errors->first('descriptions', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('justify') }}
            {{ Form::text('justify', $question->justify, ['class' => 'form-control' . ($errors->has('justify') ? ' is-invalid' : ''), 'placeholder' => 'Justify']) }}
            {!! $errors->first('justify', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('category_id') }}
            {{ Form::text('category_id', $question->category_id, ['class' => 'form-control' . ($errors->has('category_id') ? ' is-invalid' : ''), 'placeholder' => 'Category Id']) }}
            {!! $errors->first('category_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>