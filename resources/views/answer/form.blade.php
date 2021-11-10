<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('description') }}
            {{ Form::text('description', $answer->description, ['class' => 'form-control' . ($errors->has('description') ? ' is-invalid' : ''), 'placeholder' => 'Description']) }}
            {!! $errors->first('description', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('value') }}
            {{ Form::select('value', ['1' => 'Verdadero', '0' => 'Falso'], $answer->value ,['class' => 'form-control' . ($errors->has('value') ? ' is-invalid' : '')]); }}
            {!! $errors->first('value', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('question') }}
            {{ Form::text('question_id', $answer->question_id, ['class' => 'form-control' . ($errors->has('question_id') ? ' is-invalid' : ''), 'placeholder' => 'Question']) }}
            {!! $errors->first('question_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
