<!DOCTYPE html>
<html>

<head>
	<title>@yield('title')</title>


    <!-- Style fontawesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

    <!-- Me style -->
	<link rel="stylesheet" href="{{ asset('css/style.css'); }}">

    <!-- Style bootstrap -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Icon -->
    <link rel="shortcut icon" href="{{ asset('favicons/favicon.ico'); }}" />

</head>

<body>
    <!-- Document body -->
    @yield('content')

</body>
</html>
