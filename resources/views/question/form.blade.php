<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('descriptions') }}
            {{ Form::text('descriptions', $question->descriptions, ['class' => 'form-control' . ($errors->has('descriptions') ? ' is-invalid' : ''), 'placeholder' => 'Descriptions']) }}
            {!! $errors->first('descriptions', '<p class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('justify') }}
            {{ Form::text('justify', $question->justify, ['class' => 'form-control' . ($errors->has('justify') ? ' is-invalid' : ''), 'placeholder' => 'Justify']) }}
            {!! $errors->first('justify', '<p class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('quiz') }}
            {{ Form::select('quiz_id', $quizzes, null,['class' => 'form-control select2' . ($errors->has('quiz_id') ? ' is-invalid' : '')]) }}
            {!! $errors->first('quiz_id', '<p class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::file('image', ['accept' => 'image/* ' . ($errors->has('image') ? ' is-invalid' : '')])}}
            @error('image')
                <div class="">
                    <p class="text-danger">{{ $message }}</p>
                </div>
            @enderror
        </div>
    </div>
    <div class="box-footer mt-20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>
