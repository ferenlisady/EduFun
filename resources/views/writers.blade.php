@extends('layout.master')

@section('title', $writer->name)

@section('contents')
    <div class="container mb-5">
        <div class="row mb-4">
            <div class="col-md-1 text-left">
                <img src="{{ asset($writer->image_url) }}" class="img-fluid rounded-circle" alt="{{ $writer->name }}" style="max-width: 90px; max-height: 90px; margin-left: 10px;">
            </div>
            <div class="col-md-10 align-self-center" style="margin-left:20px;">
                <h1>Courses by {{ $writer->name }}</h1>
                <h5 class="ms-1">{{ $writer->specialist }}</h5>
            </div>
        </div>
    </div>

    @if ($writer->courses && $writer->courses->isNotEmpty())
    <div class="row justify-content-center" style="margin-left: 120px; margin-right: 100px;">
        @foreach ($writer->courses as $course)
            <div class="col-12 mb-1 mt-4">
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
    @else
        <p>No courses available for this writer.</p>
    @endif
@endsection