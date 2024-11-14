@extends('layout.master')

@section('title', $course->title)

@section('contents')
    <div class="container">
        <h1>{{ $course->title }}</h1>
        <img src="{{ asset($course->image_url) }}" class="img-fluid mt-5 mb-1" style="height: 300px; width:100%; border-radius: 40px;" alt="{{ $course->title }}">
        <h9 class="text-muted" style="font-size: 13px">Created on {{ $course->created_at->format('M d, Y') }} by {{ $course->writer->name }}</h9>
        <p class="mt-5" style="font-size: 18px">{{ $course->description }}</p>
    </div>
@endsection