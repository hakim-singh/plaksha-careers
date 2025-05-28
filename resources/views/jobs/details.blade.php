@extends('layouts.app')

@section('title', 'Job Details')

@section('content')
<div class="container mx-auto px-4 py-8">
    <div class="max-w-3xl mx-auto">
        <h1 class="text-2xl font-bold mb-6">Job Details</h1>

        <div class="bg-white shadow-md rounded-lg p-6">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="md:col-span-2">
                    <h2 class="text-lg font-semibold text-gray-700">Title</h2>
                    <p class="text-gray-900">{{ $job->title }}</p>
                </div>

                <div>
                    <h2 class="text-lg font-semibold text-gray-700">Status</h2>
                    <p class="text-gray-900 capitalize">{{ $job->status }}</p>
                </div>

                <div>
                    <h2 class="text-lg font-semibold text-gray-700">Position</h2>
                    <p class="text-gray-900">{{ $job->position }}</p>
                </div>

                <div>
                    <h2 class="text-lg font-semibold text-gray-700">Location</h2>
                    <p class="text-gray-900">{{ $job->location }}</p>
                </div>

                <div>
                    <h2 class="text-lg font-semibold text-gray-700">Department</h2>
                    <p class="text-gray-900">{{ $job->department }}</p>
                </div>

                <div>
                    <h2 class="text-lg font-semibold text-gray-700">Employment Type</h2>
                    <p class="text-gray-900">{{ $job->employment_type }}</p>
                </div>
            </div>

            <div class="mt-6">
                <h2 class="text-lg font-semibold text-gray-700">Job Description</h2>
                <p class="text-gray-900 whitespace-pre-line">{{ $job->description }}</p>
            </div>

            <div class="mt-6">
                <h2 class="text-lg font-semibold text-gray-700">Key Responsibilities</h2>
                <p class="text-gray-900 whitespace-pre-line">{{ $job->responsibilities }}</p>
            </div>

            <div class="mt-6">
                <h2 class="text-lg font-semibold text-gray-700">Requirements</h2>
                <p class="text-gray-900 whitespace-pre-line">{{ $job->requirements }}</p>
            </div>

            @if($job->how_to_apply)
                <div class="mt-6">
                    <h2 class="text-lg font-semibold text-gray-700">How to Apply</h2>
                    <p class="text-gray-900 whitespace-pre-line">{{ $job->how_to_apply }}</p>
                </div>
            @endif

            <div class="mt-8 flex justify-end">
                <a href="/"
                    class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                    Back to List
                </a>
            </div>
        </div>
    </div>
</div>
@endsection
