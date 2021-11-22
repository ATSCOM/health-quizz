
@if(!Auth::user())

    <!-- titulo section por categorias -->

    @foreach ($quizzes as $quiz)
        @if ($val->id == $quiz->category_id)
            <a role="button" class="btn btn-lg" href="{{ URL::asset('quizz/'.$quiz->id) }}">
                <div class="card mb-3" style="width: 10rem;">
                    <img src="{{ asset('images/pages/bandera-uceva.png') }}" class="card-img-top img-thumbnail" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{ $quiz->description }}</h5>
                    </div>
                </div>
            </a>
        @endif
    @endforeach

@endif
