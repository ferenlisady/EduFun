@extends('layout.master')

@section('title', 'About Us')

@section('style')
    <style>
        .detail {
            text-align: center; 
            font-size: calc(10px + 1vw); 
            margin: 0 50px 50px;
        }
    </style>
@endsection

@section('contents')
    <div class="container container-fluid d-flex flex-column pt-3">
        <h1 style="text-align: center; margin-bottom: 80px;">About EduFun</h1>
        <p class="detail">
            EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan 
            akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website. 
        </p>

        <p class="detail">
            Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari 
            pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan 
            sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi 
            Indonesia yang memahami ilmu pengetahuan dan cinta belajar.
        </p>
    </div>  
@endsection