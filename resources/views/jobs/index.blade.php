@extends('layouts.app')


@section('content')
<div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
    <h1 class="text-4xl font-bold text-gray-900 mb-8 text-align-center">Career Opportunities</h1>

    <div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        @foreach($jobs as $job)
            <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition-shadow">
                <div class="p-6">
                    <div class="flex items-center justify-between mb-4">
                        <span
                            class="px-3 py-1 bg-blue-100 text-blue-800 rounded-full text-sm">{{ $job->employment_type }}</span>
                        <span class="text-sm text-gray-500">{{ $job->location }}</span>
                    </div>
                    <h2 class="text-xl font-semibold text-gray-900 mb-2">
                        <a href="{{ route('jobs.show', $job) }}"
                            class="hover:text-blue-600">{{ $job->title }}</a>
                    </h2>
                    <p class="text-gray-600 line-clamp-3">{{ $job->description }}</p>
                </div>
                <div class="bg-gray-50 px-6 py-4">
                    <a href="{{ route('jobs.show', $job) }}"
                        class="text-blue-600 hover:text-blue-800 font-medium">
                        View Position →
                    </a>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection