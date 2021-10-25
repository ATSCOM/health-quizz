@extends('layouts.app')

@section('title', 'Login')

@section('content')

    <div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
                        <img src="img/ucevaLogo.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form method="POST" action="">
                        @csrf
                        @error('password')
                            <x-adminlte-alert theme="danger" class="text-uppercase" icon="fas fa-lg fa-exclamation-circle" title="{{ $message }}">
                            </x-adminlte-alert>
                        @enderror
                        <div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" id="username" name="username" class="form-control input_user" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" id="password" name="password" class="form-control input_pass" placeholder="password">
						</div>
                        <div class="d-flex justify-content-center mt-3 login_container">
				 	        <button type="submit" id="button" name="button" class="btn login_btn">Log In</button>
                        </div>
					</form>
				</div>
			</div>
		</div>
	</div>

@endsection
