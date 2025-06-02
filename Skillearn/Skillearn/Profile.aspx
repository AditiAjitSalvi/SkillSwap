<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Skillearn.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>User Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 p-8 font-sans">
    <div class="max-w-md mx-auto bg-white p-6 rounded shadow-md">
        <h2 class="text-3xl font-bold mb-6 text-indigo-700">Your Profile</h2>

        <asp:Label ID="lblError" runat="server" CssClass="text-red-600 mb-4 block"></asp:Label>

        <div class="mb-4">
            <label class="block font-semibold text-gray-700">Full Name:</label>
            <asp:Label ID="lblFullName" runat="server" CssClass="text-gray-900"></asp:Label>
        </div>
        <div class="mb-4">
            <label class="block font-semibold text-gray-700">Email:</label>
            <asp:Label ID="lblEmail" runat="server" CssClass="text-gray-900"></asp:Label>
        </div>

        <a href="Dashbord.aspx" class="inline-block mt-6 bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 transition">Back to Home</a>
    </div>
</body>
</html>
</asp:Content>
