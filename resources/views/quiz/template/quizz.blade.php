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
        <div class="form-floating mt-3 alert alert-{{ $response['right'] ? 'success' : 'danger' }} d-flex align-items-center" role="alert">
            <i class="bi bi-{{ $response['right'] ? 'check' : 'x' }}-circle"></i>
            <div>
                {{ $response['message'] }}
            </div>
        </div>
        @endif
    </div>
</div>