@extends('layouts.admin_app')

@section('content')

<div class="container mx-auto px-4 py-8">
    <div class="max-w-3xl mx-auto">
        <h1 class="text-2xl font-bold mb-6">
            {{ isset($job) ? 'Edit Job Posting' : 'Create New Job Posting' }}
        </h1>
        @if(session('success'))
            <div id="flash-message"
                class="fixed top-5 right-5 bg-green-100 text-green-800 px-4 py-2 rounded shadow-lg z-50 transition-opacity duration-500">
                {{ session('success') }}
            </div>

            <script>
                setTimeout(() => {
                    const flash = document.getElementById('flash-message');
                    if (flash) {
                        flash.classList.add('opacity-0');
                        setTimeout(() => {
                            flash.remove();
                            window.location.href = '/admin/careers';
                        }, 500);
                    }
                }, 2000);
            </script>
        @endif
        @if(session('error'))
            <div id="flash-error"
                class="fixed top-5 right-5 bg-red-100 text-red-800 px-4 py-2 rounded shadow-lg z-50 transition-opacity duration-500">
                {{ session('error') }}
            </div>

            <script>
                setTimeout(() => {
                    const flash = document.getElementById('flash-error');
                    if (flash) {
                        flash.classList.add('opacity-0');
                        setTimeout(() => flash.remove(), 500);
                    }
                }, 2000);
            </script>
        @endif

        <form method="POST"
            action="{{ isset($job) ? route('admin.jobs.update', $job) : route('admin.jobs.store') }}"
            class="bg-white shadow-md rounded-lg p-6">
            @csrf
            @isset($job) @method('PUT') @endisset

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Job Title -->
                    <div class="md:col-span-2">
                        <label for="title" class="block text-sm font-medium text-gray-700 mb-1">Job Title*</label>
                        <input type="text" id="title" name="title"
                            value="{{ old('title', $job->title ?? '') }}"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        <blade
                            error|(%26%2339%3Btitle%26%2339%3B)%20%3Cspan%20class%3D%26%2334%3Btext-red-500%20text-sm%26%2334%3B%3E%7B%7B%2524message%7D%7D%3C%2Fspan%3E%20%40enderror%0D>
                    </div>

                    <!-- Status -->
                    <div>
                        <label for="status" class="block text-sm font-medium text-gray-700 mb-1">Status*</label>
                        <select id="status" name="status"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                            <option value="open"
                                {{ old('status', $job->status ?? '') == 'open' ? 'selected' : '' }}>
                                Open</option>
                            <option value="closed"
                                {{ old('status', $job->status ?? '') == 'closed' ? 'selected' : '' }}>
                                Closed</option>
                        </select>
                    </div>

                    <!-- Position -->
                    <div>
                        <label for="position" class="block text-sm font-medium text-gray-700 mb-1">Position*</label>
                        <input type="text" id="position" name="position"
                            value="{{ old('position', $job->position ?? '') }}"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                    </div>

                    <!-- Location -->
                    <div>
                        <label for="location" class="block text-sm font-medium text-gray-700 mb-1">Location*</label>
                        <input type="text" id="location" name="location"
                            value="{{ old('location', $job->location ?? '') }}"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                    </div>

                    <!-- Department -->
                    <div>
                        <label for="department" class="block text-sm font-medium text-gray-700 mb-1">Department*</label>
                        <input type="text" id="department" name="department"
                            value="{{ old('department', $job->department ?? '') }}"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                    </div>

                    <!-- Employment Type -->
                    <div>
                        <label for="employment_type" class="block text-sm font-medium text-gray-700 mb-1">Employment
                            Type*</label>
                        <select id="employment_type" name="employment_type"
                            class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                            <option value="Full-time"
                                {{ old('employment_type', $job->employment_type ?? '') == 'Full-time' ? 'selected' : '' }}>
                                Full-time</option>
                            <option value="Part-time"
                                {{ old('employment_type', $job->employment_type ?? '') == 'Part-time' ? 'selected' : '' }}>
                                Part-time</option>
                            <option value="Contract"
                                {{ old('employment_type', $job->employment_type ?? '') == 'Contract' ? 'selected' : '' }}>
                                Contract</option>
                        </select>
                    </div>
                </div>

                <!-- Description -->
                <div class="mt-6">
                    <label for="description" class="block text-sm font-medium text-gray-700 mb-1">Job
                        Description*</label>
                    <textarea id="description" name="description" rows="4"
                        class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">{{ old('description', $job->description ?? '') }}</textarea>
                </div>

                <!-- Responsibilities -->
                <div class="mt-6">
                    <label for="responsibilities" class="block text-sm font-medium text-gray-700 mb-1">Key
                        Responsibilities*</label>
                    <textarea id="responsibilities" name="responsibilities" rows="4"
                        class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">{{ old('responsibilities', $job->responsibilities ?? '') }}</textarea>
                </div>

                <!-- Requirements -->
                <div class="mt-6">
                    <label for="requirements" class="block text-sm font-medium text-gray-700 mb-1">Requirements*</label>
                    <textarea id="requirements" name="requirements" rows="4"
                        class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">{{ old('requirements', $job->requirements ?? '') }}</textarea>
                </div>

                <!-- How to Apply -->
                <div class="mt-6">
                    <label for="how_to_apply" class="block text-sm font-medium text-gray-700 mb-1">How to Apply</label>
                    <textarea id="how_to_apply" name="how_to_apply" rows="3"
                        class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">{{ old('how_to_apply', $job->how_to_apply ?? '') }}</textarea>
                </div>

                <div class="mt-8 flex justify-end space-x-4">
                    <a href="{{ route('admin.jobs.index') }}"
                        class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                        Cancel
                    </a>
                    <button type="submit"
                        class="px-4 py-2 bg-blue-600 border border-transparent rounded-md text-white hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                        {{ isset($job) ? 'Update Job' : 'Create Job' }}
                    </button>
                </div>
        </form>
    </div>
</div>
@endsection
