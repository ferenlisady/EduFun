<nav class="navbar fixed-top navbar-expand-lg bg-light shadow-sm" style="padding-left: 100px; padding-right: 110px; height: 70px; font-size: 18px">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ url('/') }}">
            <img src="{{ asset('assets/logo.png') }}" alt="Logo" style="max-height: 50px;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end ps-3" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 250px;">
            <div class="offcanvas-header pt-4 pe-4">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" style="font-size: medium;"></button>
            </div>
            <div class="offcanvas-body">
                <form class="d-flex mx-auto" method="GET" action="{{ route('searchCourses') }}" style="width: 50%;">
                    <input class="form-control me-2" type="search" placeholder="Search courses..." aria-label="Search" name="query">
                    <button class="btn btn-outline-search" type="submit">Search</button> 
                </form>
                <ul class="navbar-nav justify-content-end flex-grow-1">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle {{ request()->is('category/data-science') || request()->is('category/network-security') ? 'active' : '' }}" 
                        href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                        <ul class="dropdown-menu dropdown-menu-end bg-white border-0">
                            <li><a class="dropdown-item text-reset" href="{{ route('dataScienceCourses') }}">Data Science</a></li>
                            <li><a class="dropdown-item text-reset" href="{{ route('networkSecurityCourses') }}">Network Security</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('writers') ? 'active' : '' }}" href="{{ route('allWriters') }}">Writer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('about') ? 'active' : '' }}" href="{{ route('about') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('popular') ? 'active' : '' }}" href="{{ route('popularCourses') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>