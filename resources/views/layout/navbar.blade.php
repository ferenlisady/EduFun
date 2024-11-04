<head>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg bg-light shadow-sm" style="padding-left: 120px; padding-right: 120px; height: 70px; font-size: 18px">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ url('/') }}">
                <img src="{{ asset('assets/logo.png') }}" alt="Logo" style="max-height: 50px;"> <!-- Adjust path to your logo -->
            </a>

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto ">
                    <li class="nav-item">
                        <a class="nav-link me-4 {{ request()->is('/') ? 'active' : '' }}" aria-current="page" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown pe-3">
                        <a class="nav-link dropdown-toggle {{ request()->is('category/data-science') || request()->is('category/network-security') ? 'active' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="text-decoration: none;">
                            Category
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{{ route('dataScienceCourses') }}">Data Science</a></li>
                            <li><a class="dropdown-item" href="{{ route('networkSecurityCourses') }}">Network Security</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link me-4 {{ request()->is('writers') ? 'active' : '' }}" href="{{ route('allWriters') }}">Writer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link me-4 {{ request()->is('about') ? 'active' : '' }}" href="{{ route('about') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link me-4 {{ request()->is('popular') ? 'active' : '' }}" href="{{ route('popularCourses') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>
