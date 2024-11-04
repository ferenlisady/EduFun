<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    @include('layout.navbar')
    <title>{{ $course->title }}</title>
</head>
<body style="background-color: #F0F4EF;">
    <div class="container mt-5 pt-5">
        <h1 class="mt-3">{{ $course->title }}</h1>
        <img src="{{ asset($course->image_url ?? 'path/to/default/image.jpg') }}" class="img-fluid mt-5 mb-1" style="height: 300px; width:100%" alt="{{ $course->title }}">
        <h9 class="text-muted" style="font-size: 13px">Created on {{ $course->created_at->format('M d, Y') }} by {{ $course->writer->name }}</h9>
        <p class="mt-4" style="font-size: 18px">{{ $course->description }}</p>
    </div>
    @include('layout.footer')
</body>
</html>