<!-- titulo section por categorias -->

@foreach ($resources as $reso)
    @if ($val->id == $reso->category_id)
        <a role="button" class="btn btn-lg" href="{{ asset($reso->route) }}" target="_blank">
            <div class="card" style="width: 10rem;">
                <div class="card-body">
                    <img src="{{ asset('archivos/default.png') }}" class="img-fluid">
                </div>
            </div>
        </a>
    @endif
@endforeach
