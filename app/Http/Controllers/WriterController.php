<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WriterController extends Controller
{
    public function writerShow()
    {
        $writers = Writer::all();
        return view('listWriters', compact('writers'));
    }

    public function writerCourseShow($id)
    {
        $writer = Writer::with('courses')->find($id);
        return view('writers', compact('writer'));
    }

}