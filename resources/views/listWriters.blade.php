@extends('layout.master')

@section('title', 'Writers List')

@section('contents') 
    <div class="container">
        <h1 class="mb-5"> Our Writers:</h1>
        <div class="row">
            @foreach ($writers as $writer)
                <div class="col-md-4 col-sm-6 mt-5">
                    <a href="{{ route('writersPage', $writer->id) }}" style="text-decoration: none; color: inherit;">
                        <div class="card" style="background: transparent; border: none;">
                            <img src="{{ asset($writer->image_url) }}" class="card-img-top rounded-circle" alt="{{ $writer->name }}" style="height: 180px; width: 180px; object-fit: cover; margin: auto; margin-bottom: 20px;">
                            <div class="card-body text-center">
                                <h5 class="card-title pb-1">{{ $writer->name }}</h5>
                                <p class="card-text">{{ $writer->specialist }}</p>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection 