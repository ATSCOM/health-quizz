@extends('layouts.app')

@section('title', 'Nickname')

@section('content')

    <div class="login-box">

        <div class="login-logo">
            <img src="{{ asset('images/pages/ucevaLogo.png') }}" alt="Logo alternativo de la uceva">
        </div>

        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Enter your nickname</p>
                <form method="POST" action="">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="text" id="nickname" name="nickname" class="form-control" placeholder="Nickname">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" id="button" name="button" class="btn btn-primary btn-block">submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
