
@if(!Auth::user())

    <!-- titulo section por categorias -->
    @foreach ($questions as $question)
    <h5 class="font-weight-bold">{{ $question->description }}</h5>
    <div class="card-group">
        <a role="button" class="btn btn-lg" href="question">
            <div class="card" style="width: 10rem;">
            <img src="img/bandera-uceva.png" class="card-img-top img-thumbnail" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{ $question->descriptions }}</h5>
            </div>
            </div>
        </a>
    </div>
    @endforeach

@endif
