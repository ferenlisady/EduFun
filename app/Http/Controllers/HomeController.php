<?php

namespace App\Http\Controllers;
use App\Models\Course;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $courses = Course::with('writer')->get(); 
        return view('home', compact('courses'));
    }

    public function about()
    {
        return view('aboutUs');
    }
}
