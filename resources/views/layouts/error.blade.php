<title>@yield('title')</title>

<link rel="shortcut icon" href="{{ asset('favicons/favicon.ico') }}" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Sniglet:400,800');

		body{
			background: #99D9EA;
			font-family: 'Sniglet', cursive;

		}
		h1{
			text-align: center;
			font-size: 10.9rem;
			font-weight: 400;
			margin: 0;
		}
		.fa{
			font-size: 6.5rem;
			text-align: center;
			display: block;
			padding-top: 5rem;
			margin: 0 auto;
			color: #BA4A00;
		}
		#error p{
			text-align: center;
			font-size: 2.5rem;
			color: #000;
		}
		a.back{
			text-align: center;
			margin: 0 auto;
			display: block;
			text-decoration: none;
			font-size: 1.5rem;
			background: #BA4A00;
			border-radius: 0.6rem;
			width: 10%;
			padding: 0.3;
			color: #99D9EA;

		}
		a.w3hubs{
			text-decoration: none;
			color: #000;
		}
		@media(max-width: 550px){
			a.back{
				width: 25%;
			}
		}
		@media(max-width: 425px){
			h1{
                padding-top: 1.3rem;
			}
			.fa{
				padding-top: 6.3rem;
			}
		}
	</style>

<body>
    <section id="error">
        <div class="content">
            <i class="fa fa-warning"></i>
            <p>¡Se produjo un error! - @yield('message')</p>
            <h1>@yield('code')</h1>
            <a class="back" href="{{ asset('/') }}">Inicio</a>
        </div>
    </section>
</body>
