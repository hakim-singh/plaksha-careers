@extends('layouts.admin_app')

@section('title', 'Manage Job Postings')

@section('content')
<div class="container mx-auto px-4 py-8">
    <div class="flex justify-between items-center mb-6">
        <h1 class="text-2xl font-bold">Job Postings</h1>
        <a href="{{ route('admin.jobs.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 footer">
            Create New Job
        </a>
    </div>

    {{-- Counters Grid --}}
    <div class="grid grid-cols-3 gap-6 mb-8 text-center">
        <div class="bg-white rounded-lg shadow p-6 footer">
            <h2 class="text-3xl font-bold text-white-900" id="totalJobsCounter">0</h2>
            <p class="mt-2 text-white-600">Total Jobs</p>
        </div>
        <div class="bg-white rounded-lg shadow p-6 footer">
            <h2 class="text-3xl font-bold text-green-600" id="openJobsCounter">0</h2>
            <p class="mt-2 text-white-600">Open Jobs</p>
        </div>
        <div class="bg-white rounded-lg shadow p-6 footer">
            <h2 class="text-3xl font-bold text-red-600" id="closedJobsCounter">0</h2>
            <p class="mt-2 text-white-600">Closed Jobs</p>
        </div>
    </div>

    {{-- Jobs Table --}}
    <div class="bg-white shadow-md rounded-lg overflow-hidden">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
                <tr>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Title</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Position</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
                @foreach($jobs as $job)
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="text-sm font-medium text-gray-900">{{ $job->title }}</div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <div class="text-sm text-gray-500">{{ $job->position }}</div>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full {{ $job->status == 'open' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                            {{ ucfirst($job->status) }}
                        </span>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                        <a href="{{ route('admin.jobs.edit', $job) }}" class="text-blue-600 hover:text-blue-900 mr-3">Edit</a>
                        <form action="{{ route('admin.jobs.destroy', $job) }}" method="POST" class="inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="text-red-600 hover:text-red-900" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="mt-4">
        {{ $jobs->links() }}
    </div>
</div>

{{-- Counter Animation Script --}}
<script>
    document.addEventListener('DOMContentLoaded', () => {
        // Animate counter function
        function animateCounter(id, target) {
            const element = document.getElementById(id);
            let count = 0;
            const speed = Math.ceil(target / 100); // Adjust speed here
            const interval = setInterval(() => {
                count += speed;
                if (count >= target) {
                    count = target;
                    clearInterval(interval);
                }
                element.textContent = count;
            }, 20);
        }

        // Start counters with passed PHP values
        animateCounter('totalJobsCounter', {{ $totalJobs }});
        animateCounter('openJobsCounter', {{ $openJobs }});
        animateCounter('closedJobsCounter', {{ $closedJobs }});
    });
</script>

@endsection
