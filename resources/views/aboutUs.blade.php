<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    @include('layout.navbar')
    <title>About Us</title>
</head>
<body style="background-color: #F0F4EF;">
    
    <div class="container" style="min-height:611px; padding-top: 150px;">
        <h1 class="mb-5" style="text-align: center">About EduFun</h1>
        <p style="text-align: center; font-size: 20px; padding-top: 30px;">
            EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan 
            akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website. 
        </p>

        <p style="text-align: center; font-size: 20px; padding-top: 30px;">
            Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari 
            pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan 
            sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi 
            Indonesia yang memahami ilmu pengetahuan dan cinta belajar.
        </p>
    </div>  

    @include('layout.footer')
</body>
</html>