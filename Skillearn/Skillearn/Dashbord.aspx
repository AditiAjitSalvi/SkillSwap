<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="Skillearn.Dashbord" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Skill Swap Hub - Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 font-sans">

    <!-- Header with Navigation -->
    <header class="bg-white shadow-md py-4 px-6 md:px-12 flex justify-between items-center">
        <h1 class="text-2xl font-bold text-indigo-700">Skill Swap Hub</h1>
        <nav class="space-x-6">
            <a href="Skills.aspx" class="text-gray-700 hover:text-indigo-600">Skills</a>
            <a href="LiveChat.aspx" class="text-gray-700 hover:text-indigo-600">Live Chat</a>
            <a href="SkillBuddy.aspx" class="text-gray-700 hover:text-indigo-600">My SkillBuddy</a>
            <a href="About.aspx" class="text-gray-700 hover:text-indigo-600">About</a>
            <a href="Profile.aspx" class="text-indigo-600 font-semibold underline">Profile</a>
            <a href="Logout.aspx" class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-md">Logout</a>
        </nav>
    </header>

    <!-- Welcome Section -->
    <section class="py-20 px-6 text-center bg-gradient-to-r from-indigo-100 via-white to-purple-100">
        <h2 class="text-4xl font-extrabold text-gray-800 mb-4">Welcome, <%= Session["FullName"] %>!</h2>
        <p class="text-lg text-gray-600">Explore new skills or connect with your SkillBuddy today.</p>
        <a href="Skills.aspx" class="mt-6 inline-block bg-indigo-600 text-white px-6 py-3 rounded-xl hover:bg-indigo-700 transition">Browse Skills</a>
    </section>

</body>
</html>