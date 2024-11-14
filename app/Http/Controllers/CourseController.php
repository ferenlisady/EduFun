<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function detail($id)
    {
        $course = Course::with('writer')->findOrFail($id);
        return view('detailCourses', compact('course')); 
    }

    public function dataScience()
    {
        $dataScienceCourses = Course::where('category_id', 1)->with('writer')->get();
        return view('dataScienceCourses', compact('dataScienceCourses'));
    }

    public function networkSecurity()
    {
        $networkSecurityCourses = Course::where('category_id', 2)->with('writer')->get();
        return view('networkSecurityCourses', compact('networkSecurityCourses'));
    }

    public function popularCourses()
    {
        $courses = Course::paginate(3); 
        return view('popular', compact('courses'));
    }

    public function search(Request $request)
    {
        $query = $request->input('query');

        $courses = Course::where('title', 'like', "%{$query}%")
                        ->orWhere('description', 'like', "%{$query}%")
                        ->with('writer')
                        ->get();

        return view('search', compact('courses', 'query'));
    }
}
