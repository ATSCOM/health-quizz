@extends('adminlte::master')

@inject('layoutHelper', 'JeroenNoten\LaravelAdminLte\Helpers\LayoutHelper')
<link rel="shortcut icon" href="{{ asset('favicons/favicon.ico') }}" />
@section('adminlte_css')
    @stack('css')
    @yield('css')
@stop

<body class="hold-transition login-page" style="background: #99D9EA;">
    <!-- Document body -->
    @yield('content')

</body>
