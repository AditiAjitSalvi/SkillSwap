<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Skillearn.Signup" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Sign Up - Skill Swap Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
    <form runat="server" class="bg-white p-8 rounded shadow-md w-full max-w-md">
        <h2 class="text-2xl font-bold mb-6 text-indigo-700">Create Account</h2>
        <asp:TextBox ID="txtName" runat="server" CssClass="w-full mb-4 px-4 py-2 border rounded" placeholder="Full Name"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="w-full mb-4 px-4 py-2 border rounded" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="w-full mb-6 px-4 py-2 border rounded" placeholder="Password"></asp:TextBox>
        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" CssClass="w-full bg-indigo-600 text-white py-2 rounded hover:bg-indigo-700" />
        <asp:Label ID="lblMsg" runat="server" CssClass="block mt-4 text-red-500 text-sm"></asp:Label>
    </form>
</body>
</html>
