<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>@yield('title', 'Admin Dashboard')</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        aside.w-64.bg-teal-900.shadow-md {
            background: #012B2B;
            color: white;
        }

        header.bg-white.shadow.p-4.flex.justify-between.items-center {
            background: #012B2B;
            color: white;
        }

        .footer {
            background: #012B2B;
            color: white;
        }

    </style>
</head>

<body class="flex h-screen bg-gray-100">

    <!-- Side Menu -->
    <aside class="w-64 bg-teal-900 shadow-md">
        <div class="p-4 font-bold text-xl border-b">
            <img src="https://plaksha.edu.in/images/logo-new.png" alt="Plaksha University" class="h-10">
        </div>
        <nav id="sidebar-nav" class="p-4 space-y-2">
            <a href="{{ route('admin.jobs.index') }}"
                class="nav-link block px-3 py-2 rounded">Dashboard</a>
            <a href="{{ route('admin.jobs.create') }}" class="nav-link block px-3 py-2 rounded">Create
                New Job</a>
            <a href="javascript:void(0)" class="nav-link block px-3 py-2 rounded">Settings</a>
            <a href="/" class="nav-link block px-3 py-2 rounded">Back Home</a>
        </nav>
    </aside>


    <!-- Main Content Area -->
    <div class="flex flex-col flex-1 min-h-screen">

        <!-- Top Menu / Navbar -->
        <header class="bg-white shadow p-4 flex justify-between items-center">
            <div class="text-lg font-semibold">Admin Panel</div>
            <div>

            </div>
        </header>

        <!-- Counter Section -->

        <!-- Main Content -->
        <main class="flex-1 overflow-auto p-4">
            @yield('content')
        </main>
        <footer class="bg-gray-200 text-center text-sm text-gray-600 py-4 footer">
            &copy; {{ date('Y') }} Plaksha University. All rights reserved.
        </footer>

    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const links = document.querySelectorAll('#sidebar-nav .nav-link');
            const currentPath = window.location.pathname;

            function setActiveLink(path) {
                links.forEach(link => {
                    const linkPath = new URL(link.href).pathname;
                    if (linkPath === path) {
                        link.classList.add('bg-blue-100', 'text-black', 'font-semibold');
                    } else {
                        link.classList.remove('bg-blue-100', 'text-black', 'font-semibold');
                    }
                });
            }

            // Highlight on page load
            setActiveLink(currentPath);

            // Update on click
            links.forEach(link => {
                link.addEventListener('click', function () {
                    setActiveLink(new URL(this.href).pathname);
                });
            });
        });

    </script>


</body>

</html>
