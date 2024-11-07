<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <link rel="icon" href="{{ asset('assets/logo.png') }}" type="image/png">
    <title>@yield('title')</title>
    @include('layout.style')
    @yield('style')
</head>

<body>
    <header>
        @include('layout.navbar')
    </header>
    
    <main>
        @yield('contents')
    </main>

    <footer>
        @include('layout.footer')
    </footer>
    
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>
</html>
