@extends('layouts.app')

@section('title', 'Page Not Found')
@section('content')
<div class="min-h-screen flex items-center justify-center bg-gray-50">
    <div class="max-w-md text-center">
        <h1 class="text-9xl font-bold text-blue-600">404</h1>
        <p class="text-2xl font-medium text-gray-900 mt-4">Page not found</p>
        <p class="mt-4 text-gray-600">
            The page you're looking for doesn't exist or has been moved.
        </p>
        <a href="{{ route('home') }}"
            class="mt-6 inline-block px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">
            Return to Homepage
        </a>
    </div>
</div>
@endsection
