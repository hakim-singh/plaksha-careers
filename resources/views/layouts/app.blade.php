<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title') - Plaksha University Careers</title>
    <meta name="robots" content="index, follow">

    <meta name="description" content="@yield('description', 'Explore career opportunities at Plaksha University')">

<!-- Tailwind CSS CDN (for quick testing only) -->
<script src="https://cdn.tailwindcss.com"></script>
@vite(['resources/css/app.css', 'resources/js/app.js'])

</head>
<body class="bg-gray-50">
    @include('partials.header')
    
    <main class="min-h-screen">
        
        @yield('content')
    </main>

    @include('partials.footer')
    
    <script>
        // Mobile menu toggle
        document.getElementById('menu-toggle').addEventListener('click', function() {
            document.getElementById('mobile-menu').classList.toggle('hidden');
        });
    </script>


</body>
</html>