<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminJobController extends Controller
{
    /**
     * Display all jobs (admin listing)
     */
    public function index()
    {
        // Get all jobs paginated (for table)
        $jobs = Job::paginate(10);

        // Calculate total jobs count
        $totalJobs = Job::count();

        // Calculate open jobs count
        $openJobs = Job::where('status', 'open')->count();

        // Calculate closed jobs count
        $closedJobs = Job::where('status', 'closed')->count();

        // Pass all data to the view
        return view('admin.jobs.index', [
            'jobs' => $jobs,
            'totalJobs' => $totalJobs,
            'openJobs' => $openJobs,
            'closedJobs' => $closedJobs,
        ]);
    }

    /**
     * Show job creation form
     */
    public function create()
    {
        return view('admin.jobs.form');
    }

    /**
     * Store new job
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

    // Generate slug from title
    $validated['slug'] = Str::slug($validated['title']);

    Job::create($validated);
    return redirect()->back()->with('success', 'Form submitted successfully!');

    // return redirect()->route('admin.jobs.index')
    //                 ->with('success', 'Job created successfully!');
}
public function edit(Job $job)
{
    return view('admin.jobs.edit', compact('job'));
}
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

    // Update slug only if title changed
    if ($job->title !== $validated['title']) {
        $validated['slug'] = Str::slug($validated['title']);
    }

    $job->update($validated);

    return redirect()->back()->with('success', 'Record updated successfully!');
}

public function destroy(Job $job)
{
    $job->delete();

    return redirect()->route('admin.jobs.index')
                    ->with('success', 'Job deleted successfully!');
}
}
