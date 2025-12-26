<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Admin</title>
    <!-- Load Tailwind CSS from CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Customizing Tailwind colors to match the dark blue/black header
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'primary-dark': '#1e293b', // Slate 800 (for header background)
                        'secondary-text': '#94a3b8', // Slate 400
                    },
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                    },
                }
            }
        }
    </script>
    <style>
        /* Internal CSS for layout and dropdown visibility */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8fafc; /* Light background */
        }
        .navbar {
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -2px rgba(0, 0, 0, 0.1);
        }
        /* Hide dropdown menu by default (desktop interaction handled by JS/hover) */
        .dropdown-menu {
            display: none;
        }
        /* Show dropdown menu on hover for desktop */
        .dropdown:hover .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body class="min-h-screen">

    <!-- Navbar/Header Section -->
    <header class="navbar bg-primary-dark text-white p-4">
        <div class="container mx-auto flex justify-between items-center">
            <!-- Left Side: App Name -->
            <div class="text-2xl font-semibold tracking-wider">
               <a href="home" class="navbar-brand text-light fs-4 fw-bold">CRM Application</a>
            </div>

            <!-- Center: Navigation Links -->
            <nav class="hidden sm:flex space-x-6 text-sm font-medium">
                
                <!-- Employees Dropdown -->
                <div class="dropdown relative group">
                    <button class="flex items-center hover:text-cyan-400 transition duration-150 p-2 rounded-lg focus:outline-none">
                      <!--   Employees -->
                        <svg class="w-4 h-4 ml-1 transform transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="dropdown-menu absolute z-10 top-full left-1/2 transform -translate-x-1/2 mt-2 w-48 bg-white text-gray-800 rounded-lg shadow-xl overflow-hidden">
                        <a href="emplist" class="block px-4 py-2 hover:bg-gray-100">Employee List</a>
                        <a href="addEmployees" class="block px-4 py-2 hover:bg-gray-100">Add Employee</a>
                    </div>
                </div>

                <!-- Products Dropdown -->
                <div class="dropdown relative group">
                    <button class="flex items-center hover:text-cyan-400 transition duration-150 p-2 rounded-lg focus:outline-none">
                      <!--   Products -->
                        <svg class="w-4 h-4 ml-1 transform transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="dropdown-menu absolute z-10 top-full left-1/2 transform -translate-x-1/2 mt-2 w-48 bg-white text-gray-800 rounded-lg shadow-xl overflow-hidden">
                        <a href="productList" class="block px-4 py-2 hover:bg-gray-100">Product List</a>
                        <a href="addProduct" class="block px-4 py-2 hover:bg-gray-100">Add Product</a>
                    </div>
                </div>

                <!-- Complaints Dropdown -->
                <div class="dropdown relative group">
                    <button class="flex items-center hover:text-cyan-400 transition duration-150 p-2 rounded-lg focus:outline-none">
                      <!--   Complaints -->
                        <svg class="w-4 h-4 ml-1 transform transition-transform duration-200 group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="dropdown-menu absolute z-10 top-full left-1/2 transform -translate-x-1/2 mt-2 w-48 bg-white text-gray-800 rounded-lg shadow-xl overflow-hidden">
                        <a href="#" class="block px-4 py-2 hover:bg-gray-100">View Complaints</a>
                        <a href="#" class="block px-4 py-2 hover:bg-gray-100">New Ticket</a>
                    </div>
                </div>
            </nav>

            <!-- Right Side: Admin Profile -->
            <div class="flex items-center space-x-2">
                <!-- User Icon (Inline SVG) -->
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd"></path></svg>
                <span class="text-sm font-medium">Admin</span>
            </div>
        </div>
    </header>

    <!-- Main Content Area: Welcome Message -->
    <main class="container mx-auto mt-10 p-4 sm:p-6 lg:p-8">
        <div class="max-w-4xl mx-auto">
            <h1 class="text-4xl font-light text-gray-800 mb-2">Welcome Admin</h1>
            <p class="text-lg text-gray-600">Now you can handle the below functionalities...!!</p>
            
            <!-- Placeholder section for suggested functionalities (like quick links/cards) -->
            <div class="mt-10 p-6 bg-white rounded-xl shadow-md border border-gray-100">
                <h2 class="text-xl font-semibold mb-6 text-gray-700 border-b pb-3">Dashboard Overview</h2>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
                    
                    <!-- Card 1: Employee List -->
                    <a href="emplist" class="block p-4 bg-indigo-50 hover:bg-indigo-100 rounded-lg shadow-sm transition duration-200 text-center">
                        <svg class="w-8 h-8 mx-auto text-indigo-600 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M5 20h2m0 0v-2A5.99 5.99 0 017 10h10a5.99 5.99 0 010 8v2m-7 0v-2A5.002 5.002 0 019 10a5.002 5.002 0 010-2h4a5.002 5.002 0 010 2a5.002 5.002 0 010 8v2m-7-2h2m-2-2v2"></path></svg>
                        <span class="block text-sm font-semibold text-indigo-700">Employee List</span>
                        <span class="block text-xs text-indigo-500">View  Staff</span>
                    </a>

                    <!-- Card 2: Add Employee -->
                    <a href="addEmployees" class="block p-4 bg-green-50 hover:bg-green-100 rounded-lg shadow-sm transition duration-200 text-center">
                        <svg class="w-8 h-8 mx-auto text-green-600 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z"></path></svg>
                        <span class="block text-sm font-semibold text-green-700">Add Employee</span>
                        <span class="block text-xs text-green-500">Create New User</span>
                    </a>

                    <!-- Card 3: Products -->
                    <a href="addProduct" class="block p-4 bg-yellow-50 hover:bg-yellow-100 rounded-lg shadow-sm transition duration-200 text-center">
                        <svg class="w-8 h-8 mx-auto text-yellow-600 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4"></path></svg>
                        <span class="block text-sm font-semibold text-yellow-700">Products</span>
                        <span class="block text-xs text-yellow-500">Manage Inventory</span>
                    </a>
                    
                     <a href="productList" class="block p-4 bg-indigo-50 hover:bg-indigo-100 rounded-lg shadow-sm transition duration-200 text-center">
                        <svg class="w-8 h-8 mx-auto text-indigo-600 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M5 20h2m0 0v-2A5.99 5.99 0 017 10h10a5.99 5.99 0 010 8v2m-7 0v-2A5.002 5.002 0 019 10a5.002 5.002 0 010-2h4a5.002 5.002 0 010 2a5.002 5.002 0 010 8v2m-7-2h2m-2-2v2"></path></svg>
                        <span class="block text-sm font-semibold text-indigo-700">Product List</span>
                        <span class="block text-xs text-indigo-500">View  User</span>
                    </a>
                    
                    <!-- Card 4: Complaints -->
                    <a href="#" class="block p-4 bg-red-50 hover:bg-red-100 rounded-lg shadow-sm transition duration-200 text-center"/>
                        <svg class="w-8 h-8 mx-auto text-red-600 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        <span class="block text-sm font-semibold text-red-700">Complaints</span>
                        <span class="block text-xs text-red-500">5 New Tickets</span>
                    </a>
                </div>
            </div>
            
        </div>
    </main>
    
    


    <script>
        // JavaScript for basic mobile/touch navigation functionality
        const dropdowns = document.querySelectorAll('.dropdown');

        dropdowns.forEach(dropdown => {
            const button = dropdown.querySelector('button');
            const menu = dropdown.querySelector('.dropdown-menu');

            button.addEventListener('click', () => {
                // Toggle display style
                if (menu.style.display === 'block') {
                    menu.style.display = 'none';
                } else {
                    // Close all other open menus first
                    dropdowns.forEach(otherDropdown => {
                        if (otherDropdown !== dropdown) {
                            otherDropdown.querySelector('.dropdown-menu').style.display = 'none';
                        }
                    });
                    menu.style.display = 'block';
                }
            });

            // Close the dropdown if the user clicks outside
            document.addEventListener('click', (event) => {
                if (!dropdown.contains(event.target) && menu.style.display === 'block') {
                    menu.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>
    
    
    
