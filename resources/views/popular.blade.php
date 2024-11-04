<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    @include('layout.navbar')
    <title>Popular Courses</title>
</head>
<body style="background-color: #F0F4EF;">

    <div class="container mt-5 pt-5">
        <h1 class="mb-5 mt-3">Popular</h1>
        <div class="row">
            @foreach ($courses as $course)
                <div class="col-12 mb-2">
                    <div class="card mb-4" style="background-color: transparent; border: none;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="{{ asset($course->image_url) }}" class="img-fluid" style="border-radius: 40px;  height: 200px; width: 90%;" alt="{{ $course->title }}">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h3 class="card-title">{{ $course->title }}</h3>
                                    <p class="card-text">
                                        <small class="text-muted">
                                            Created on: {{ $course->created_at->format('F j, Y') }} | Created by: {{ $course->writer->name }}
                                        </small>
                                    </p>
                                    <p class="card-text">
                                        {{ Str::limit($course->description, 150, '...') }}
                                    </p>
                                    <div class="text-end">
                                        <a href="{{ route('detailCourses', $course->id) }}" class="btn btn-primary border-0 " style="background-color: #071026; font-size: 14px; padding: 9px 30px;">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="d-flex justify-content-center mt-4">
            <span class="me-2">Page |</span>
            <span class="me-2">
                @for ($i = 1; $i <= $courses->lastPage(); $i++)
                    <a style="text-decoration: none" href="{{ $courses->url($i) }}" class="mx-1 {{ $i === $courses->currentPage() ? 'text-dark fw-bold' : 'text-muted' }}">{{ $i }}</a>
                @endfor
            </span>
        </div>
    </div>

    @include('layout.footer')
</body>
</html>
