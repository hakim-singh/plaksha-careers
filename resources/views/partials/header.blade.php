<nav class="bg-[#0A2C2C] text-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
            <!-- Logo and Title -->
            <a href="{{ route('home') }}" class="flex items-center">
                <img src="https://plaksha.edu.in/images/logo-new.png" alt="Plaksha University" class="h-10">
                <span class="ml-3 text-xl font-bold">Careers at Plaksha</span>
            </a>

            <!-- Desktop Menu -->
            <div class="hidden md:flex items-center space-x-6">
                <a href="#" class="hover:underline">Careers at Plaksha</a>
                <a href="#" class="hover:underline">Intranet</a>
                <a href="#" class="hover:underline">Contact Us</a>
                <a href="#" class="hover:underline">Public Self Disclosure</a>


            </div>

            <!-- Mobile menu button -->
            <div class="md:hidden">
                <button id="menu-toggle" class="text-white focus:outline-none">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M4 6h16M4 12h16M4 18h16"/>
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobile-menu" class="hidden md:hidden px-4 pt-2 pb-4 space-y-2 bg-[#0A2C2C] text-white">
        <a href="#" class="block">Careers at Plaksha</a>
        <a href="#" class="block">Intranet</a>
        <a href="#" class="block">Contact Us</a>
        <a href="#" class="block">Public Self Disclosure</a>
        <button class="bg-teal-600 hover:bg-teal-700 w-full py-1 rounded-full">Apply Now</button>
    </div>
</nav>

<script>
    // Toggle mobile menu
    document.getElementById('menu-toggle').addEventListener('click', function () {
        const menu = document.getElementById('mobile-menu');
        menu.classList.toggle('hidden');
    });
</script>
