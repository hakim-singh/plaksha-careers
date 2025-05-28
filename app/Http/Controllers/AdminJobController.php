<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

/**
 * Class AdminJobController
 *
 * Controller to manage job postings in the admin panel.
 *
 * @package App\Http\Controllers
 */
class AdminJobController extends Controller
{
    /**
     * Display a listing of jobs with stats.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $jobs = Job::paginate(10);
        $totalJobs = Job::count();
        $openJobs = Job::where('status', 'open')->count();
        $closedJobs = Job::where('status', 'closed')->count();

        return view('admin.jobs.index', [
            'jobs' => $jobs,
            'totalJobs' => $totalJobs,
            'openJobs' => $openJobs,
            'closedJobs' => $closedJobs,
        ]);
    }

    /**
     * Show the form to create a new job posting.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.jobs.form');
    }

    /**
     * Store a newly created job in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'position' => 'required|string|max:255',
            'location' => 'required|string|max:255',
            'department' => 'required|string|max:255',
            'employment_type' => 'required|string|max:255',
            'status' => 'required|in:open,closed',
            'description' => 'required|string',
            'responsibilities' => 'required|string',
            'requirements' => 'required|string',
            'how_to_apply' => 'nullable|string',
        ]);

        $validated['slug'] = Str::slug($validated['title']);
        Job::create($validated);

        return redirect()->back()->with('success', 'Form submitted successfully!');
    }

    /**
     * Show the form for editing the specified job.
     *
     * @param \App\Models\Job $job
     * @return \Illuminate\View\View
     */
    public function edit(Job $job)
    {
        return view('admin.jobs.edit', compact('job'));
    }

    /**
     * Update the specified job in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Job $job
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request, Job $job)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'position' => 'required|string|max:255',
            'location' => 'required|string|max:255',
            'department' => 'required|string|max:255',
            'employment_type' => 'required|string|max:255',
            'status' => 'required|in:open,closed',
            'description' => 'required|string',
            'responsibilities' => 'required|string',
            'requirements' => 'required|string',
            'how_to_apply' => 'nullable|string',
        ]);

        if ($job->title !== $validated['title']) {
            $validated['slug'] = Str::slug($validated['title']);
        }

        $job->update($validated);
        return redirect()->back()->with('success', 'Record updated successfully!');
    }

    /**
     * Remove the specified job from storage.
     *
     * @param \App\Models\Job $job
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Job $job)
    {
        $job->delete();
        return redirect()->route('admin.jobs.index')
            ->with('success', 'Job deleted successfully!');
    }
}