@extends('adminlte::page')

@section('title')
    {{ $quizs->description ?? 'Quizz start' }}
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <h3><strong>Guía del cuestionario</strong></h3>
                                <h5>Cuestionario de {{ $cants }} preguntas.</h5>
                                <p><strong>Importante:</strong> antes de enviar su intento, asegúrese de haber seleccionado una opción de respuesta por cada pregunta y una vez haya verificado sus elecciones, no olvide dar clic en el botón llamado 'Siguiente' que encontrará al final del examen; para terminar el intento y que la plataforma haga la calificación automática, debe dar clic en el botón identificado como 'Enviar todo y terminar'.</p>
                                <p>Recuerde que para tener éxito con el desarrollo de esta prueba se recomienda:</p>
                                <ul>
                                    <li>Estar en un sitio tranquilo que le permita evitar distracciones y contar con un mayor grado de concentración.</li>
                                    <li>Garantizar que dicho lugar le ofrezca estabilidad en la conexión a Internet y continuidad en la prestación del servicio de fluido eléctrico.</li>
                                    <li>Utilizar un PC de escritorio que funcione de manera adecuada.</li>
                                </ul>
                                <h5 style="font-weight: bold; text-align: center;"><i>Éxitos con el desarrollo del cuestionario.</i></h5>
                                <div style="text-align: center;">
                                    <p>Intentos permitidos: <i class="fas fa-infinity"></i></p>
                                    <p>Límite de tiempo: N/A</p>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-md-center">
                            <div class="col-md-auto">
                                <form action="{{ asset('starting') }}" method="POST" class="form-start">
                                    @csrf
                                    <input type="text" name="sabe" value="{{ $id }}" hidden>
                                    <button type="submit" class="btn btn-outline-info btn-lg btn-block"> Intente resolver el cuestionario ahora</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
