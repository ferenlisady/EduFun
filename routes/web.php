<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\WriterController;
use App\Http\Controllers\CourseController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/about', [HomeController::class, 'about'])->name('about');
Route::get('/writers', [WriterController::class, 'writerShow'])->name('allWriters');
Route::get('/writers/{id}', [WriterController::class, 'writerCourseShow'])->name('writersPage');
Route::get('/courses', [CourseController::class, 'all'])->name('allCourses'); 
Route::get('/courses/{id}', [CourseController::class, 'detail'])->name('detailCourses');
Route::get('/category/data-science', [CourseController::class, 'dataScience'])->name('dataScienceCourses');
Route::get('/category/network-security', [CourseController::class, 'networkSecurity'])->name('networkSecurityCourses');
Route::get('/popular', [CourseController::class, 'popularCourses'])->name('popularCourses');