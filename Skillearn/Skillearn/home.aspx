<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Skillearn.home" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Skill Swap Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800 font-sans">

    <!-- Header -->
    <header class="bg-white shadow-md py-4 px-6 md:px-12 flex justify-between items-center">
        <h1 class="text-3xl font-bold text-indigo-700">Skill Swap Hub</h1>
        <nav class="space-x-6">
            <a href="Login.aspx" class="text-gray-700 hover:text-indigo-600 font-medium">Login</a>
            <a href="Signup.aspx" class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md transition">Sign Up</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-indigo-100 via-white to-purple-100 py-20 px-6 text-center">
        <h2 class="text-4xl md:text-5xl font-extrabold text-gray-800 mb-4">Learn & Teach New Skills</h2>
        <p class="text-lg text-gray-600 max-w-2xl mx-auto mb-6">Join a growing community where learners become teachers. Exchange knowledge, grow together.</p>
        <a href="Signup.aspx" class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-6 py-3 rounded-xl shadow-lg transition duration-300">
            Get Started
        </a>
    </section>

    <!-- Features Section -->
    <section class="py-16 px-6 md:px-12 bg-white">
        <h3 class="text-3xl font-bold text-center mb-10 text-gray-800">Why Join Skill Swap Hub?</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div class="p-6 bg-indigo-50 rounded-lg shadow-md">
                <img src="https://img.icons8.com/ios-filled/50/4a90e2/idea.png" class="mx-auto mb-4" />
                <h4 class="text-xl font-semibold text-indigo-700 mb-2">Share Your Expertise</h4>
                <p class="text-gray-600">Help others by teaching what you know, and build your own reputation.</p>
            </div>
            <div class="p-6 bg-indigo-50 rounded-lg shadow-md">
                <img src="https://img.icons8.com/ios-filled/50/4a90e2/learning.png" class="mx-auto mb-4" />
                <h4 class="text-xl font-semibold text-indigo-700 mb-2">Learn New Skills</h4>
                <p class="text-gray-600">Pick up new skills in tech, art, cooking, and more from real people.</p>
            </div>
            <div class="p-6 bg-indigo-50 rounded-lg shadow-md">
                <img src="https://img.icons8.com/ios-filled/50/4a90e2/conference-call.png" class="mx-auto mb-4" />
                <h4 class="text-xl font-semibold text-indigo-700 mb-2">Community Support</h4>
                <p class="text-gray-600">Be part of a supportive network that encourages growth and feedback.</p>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="py-16 bg-gray-100 px-6 md:px-12 text-center">
        <h3 class="text-3xl font-bold mb-10 text-gray-800">What Our Users Say</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="bg-white p-6 rounded-lg shadow-md">
                <p class="text-gray-700 italic">"I taught digital marketing and learned graphic design. Great experience!"</p>
                <div class="mt-4 font-semibold text-indigo-600">– Priya S.</div>
            </div>
            <div class="bg-white p-6 rounded-lg shadow-md">
                <p class="text-gray-700 italic">"An amazing place to learn without spending money."</p>
                <div class="mt-4 font-semibold text-indigo-600">– Akash M.</div>
            </div>
            <div class="bg-white p-6 rounded-lg shadow-md">
                <p class="text-gray-700 italic">"I’ve made new friends and grown my confidence."</p>
                <div class="mt-4 font-semibold text-indigo-600">– Rina K.</div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="py-16 bg-indigo-600 text-white text-center px-6">
        <h3 class="text-3xl font-bold mb-4">Ready to Share and Grow?</h3>
        <p class="mb-6">Create your free account now and become part of the skill-sharing revolution.</p>
        <a href="Signup.aspx" class="bg-white text-indigo-700 font-semibold px-6 py-3 rounded-md hover:bg-gray-100 transition">
            Join Now
        </a>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-6 text-center">
        <p>&copy; 2025 Skill Swap Hub. All rights reserved.</p>
    </footer>

</body>
</html>