<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Skillearn.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Login - Skill Swap Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
    <form runat="server" class="bg-white p-8 rounded shadow-md w-full max-w-md">
        <h2 class="text-2xl font-bold mb-6 text-indigo-700">Login to Your Account</h2>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="w-full mb-4 px-4 py-2 border rounded" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="w-full mb-6 px-4 py-2 border rounded" placeholder="Password"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="w-full bg-indigo-600 text-white py-2 rounded hover:bg-indigo-700" />
        <asp:Label ID="lblMsg" runat="server" CssClass="block mt-4 text-red-500 text-sm"></asp:Label>
    </form>
</body>
</html>