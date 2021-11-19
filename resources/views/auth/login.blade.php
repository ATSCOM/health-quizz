@extends('layouts.app')

@section('title', 'Login')

@section('content')

    <div class="login-box">

        <div class="login-logo">
            <img src="img/ucevaLogo.png" alt="Logo alternativo de la uceva">
        </div>

        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Login to the site</p>
                <form method="POST" action="">
                    @csrf
                    @error('message')
                        <x-adminlte-alert theme="danger" class="text-uppercase" icon="fas fa-lg fa-exclamation-circle" title="{{ $message }}">
                        </x-adminlte-alert>
                    @enderror
                    <div class="input-group mb-3">
                        <input type="text" id="username" name="username" class="form-control" placeholder="username">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-2">
                        <input type="password" id="password" name="password" class="form-control" placeholder="password">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" id="button" name="button" class="btn btn-primary btn-block">Sign In</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
