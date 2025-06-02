<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="SkillPersonProfile.aspx.cs" Inherits="Skillearn.SkillPersonProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Skill Person Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 p-8 font-sans max-w-2xl mx-auto">

    <asp:Label ID="lblError" runat="server" CssClass="text-red-600 mb-4 block"></asp:Label>
    <asp:Label ID="lblSuccess" runat="server" CssClass="text-green-600 mb-4 block"></asp:Label>

    <h2 class="text-3xl font-bold mb-4 text-indigo-700"><asp:Label ID="lblFullName" runat="server"></asp:Label></h2>
    <p class="text-gray-700 mb-2"><strong>Skill:</strong> <asp:Label ID="lblSkill" runat="server"></asp:Label></p>
    <p class="text-gray-600 mb-6"><asp:Label ID="lblExperience" runat="server"></asp:Label></p>
    <p class="text-gray-600 mb-6"><asp:Label ID="lblProfileInfo" runat="server"></asp:Label></p>

    <asp:Button ID="btnRequestSkill" runat="server" Text="Request Skill Share" CssClass="bg-indigo-600 text-white px-6 py-2 rounded hover:bg-indigo-700 transition" OnClick="btnRequestSkill_Click" />

    <br /><br />
    <a href="Skills.aspx" class="text-indigo-700 hover:underline">Back to Skills</a>

</body>
</html>
</asp:Content>
