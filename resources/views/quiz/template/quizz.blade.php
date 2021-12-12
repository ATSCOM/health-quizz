<div class="row">

    @if (!is_null($image))
    <div class="col-12 col-md-6">
        <p class="font-weight-bold">{{ $question }}</p>
        <img src="{{ asset($image) }}" class="img-fluid card-img-top" alt="" width="50%">
    </div>
    @endif
    <div class="col-12 col-md-{{is_null($image) ? '6' : '12' }}">
        <p class="font-weight-bold">Seleccione una opción:</p>
        @foreach($options as $option)
        <button type="button" onclick="document.getElementById('responseQuiz').value = {{$option['id']}};" class="btn btn-primary btn-lg btn-block">{{$option['description']}}</button>
        @endforeach

        @if(!is_null($response))
        <div class="alert alert-{{ $response['right'] ? 'success' : 'danger' }} d-flex align-items-center" role="alert">
            <i class="bi bi-{{ $response['right'] ? 'check' : 'x' }}-circle"></i>
            <div>
                {{ $response['message'] }}
            </div>
        </div>
        <div class="form-floating mt-3">
            <textarea class="form-control" placeholder="Justifique su respuesta" id="floatingTextarea" readonly>{{ is_null($response) ? '' : $response }}</textarea>
        </div>
        @endif
    </div>
</div>