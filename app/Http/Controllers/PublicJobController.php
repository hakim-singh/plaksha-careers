<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;

class PublicJobController extends Controller
{
    /**
     * Display all open jobs (homepage)
     */
    public function index()
    {
        $jobs = Job::where('status', 'open')
                  ->orderBy('created_at', 'desc')
                  ->paginate(10);

        return view('jobs.index', compact('jobs'));
    }

    /**
     * Display single job details
     */
    public function show(Job $job)
    {
        return view('jobs.details', compact('job'));
    }
}
