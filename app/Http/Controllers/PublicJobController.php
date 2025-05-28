<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;

/**
 * Class PublicJobController
 *
 * Handles public-facing job listings and job detail views.
 *
 * @package App\Http\Controllers
 */
class PublicJobController extends Controller
{
    /**
     * Display a listing of all open jobs on the homepage.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $jobs = Job::where('status', 'open')
                  ->orderBy('created_at', 'desc')
                  ->paginate(10);

        return view('jobs.index', compact('jobs'));
    }

    /**
     * Display the specified job's detailed information.
     *
     * @param \App\Models\Job $job
     * @return \Illuminate\View\View
     */
    public function show(Job $job)
    {
        return view('jobs.details', compact('job'));
    }
}