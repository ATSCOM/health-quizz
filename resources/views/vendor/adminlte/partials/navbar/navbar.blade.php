<nav class="main-header navbar
    {{ config('adminlte.classes_topnav_nav', 'navbar-expand') }}
    {{ config('adminlte.classes_topnav', 'navbar-white navbar-light') }}">

    {{-- Navbar left links --}}
    <ul class="navbar-nav">
        {{-- Left sidebar toggler link --}}
        @include('adminlte::partials.navbar.menu-item-left-sidebar-toggler')

        {{-- Configured left links --}}
        @each('adminlte::partials.navbar.menu-item', $adminlte->menu('navbar-left'), 'item')

        {{-- Custom left links --}}
        @yield('content_top_nav_left')
    </ul>

    {{-- Navbar right links --}}
    <ul class="navbar-nav ml-auto">
        {{-- Custom right links --}}
        @yield('content_top_nav_right')

        {{-- Configured right links --}}
        @each('adminlte::partials.navbar.menu-item', $adminlte->menu('navbar-right'), 'item')

        {{-- User menu login --}}

        @if (!Auth::user())
            @if (isset($_REQUEST['nickname']))
                <li class="nav-item">
                    <a class="nav-link " href=""><i class="fas fa-heart"></i> {{ $_REQUEST['nickname'] }}</a>
                </li>
            @endif
        @endif

        {{-- User menu link --}}
        @if(Auth::user())
            @if(config('adminlte.usermenu_enabled'))
                <li class="nav-item">
                    <a type="button" class="btn btn-block btn-outline-success" href="quizzes/create"><i class="fas fa-plus-circle"></i> Create question</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="register"><i class="fas fa-users"></i> Register</a>
                </li>
                @include('adminlte::partials.navbar.menu-item-dropdown-user-menu')
            @else
                @include('adminlte::partials.navbar.menu-item-logout-link')
            @endif
        @endif

        {{-- Right sidebar toggler link --}}
        @if(config('adminlte.right_sidebar'))
            @include('adminlte::partials.navbar.menu-item-right-sidebar-toggler')
        @endif

    </ul>

</nav>
