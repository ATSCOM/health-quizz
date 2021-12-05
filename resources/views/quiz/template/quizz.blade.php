<div class="row">
    <div class="col-12 col-md-6">
        <p class="font-weight-bold">{{ $question }}</p>
        <img src="{{ asset('/images/quizzes/default.png') }}" class="img-fluid card-img-top" alt="" width="50%">
    </div>
    <div class="col-12 col-md-6">
        <p class="font-weight-bold">Seleccione una opción:</p>
        @foreach($options as $option)
        <button type="button" onclick="document.getElementById('responseQuiz').value = {{$option['id']}};" class="btn btn-primary btn-lg btn-block">{{$option['description']}}</button>
        @endforeach

        <div class="form-floating mt-3">
            <textarea class="form-control" placeholder="Justifique su respuesta" id="floatingTextarea" readonly>{{ is_null($response) ? '' : $response }}</textarea>
        </div>
    </div>
</div>
