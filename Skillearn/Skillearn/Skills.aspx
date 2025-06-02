<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="Skillearn.Skillaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Skills - Skill Swap Hub</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 p-8 font-sans">

    <h2 class="text-4xl font-bold mb-8 text-indigo-700 text-center">Skill People</h2>

    <asp:Repeater ID="rptSkillPeople" runat="server">
        <ItemTemplate>
            <div class="bg-white rounded shadow-md p-6 mb-6 max-w-md mx-auto">
                <h3 class="text-2xl font-semibold text-indigo-600"><%# Eval("FullName") %></h3>
                <p class="text-gray-700"><strong>Skill:</strong> <%# Eval("Skill") %></p>
                <p class="text-gray-600 mt-2"><strong>Exprince:</strong><%# Eval("Experience") %></p>
                <asp:HyperLink runat="server" NavigateUrl='<%# "SkillPersonProfile.aspx?id=" + Eval("SkillPersonId") %>' CssClass="text-indigo-700 hover:underline mt-4 block">
                    View Profile
                </asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</body>
</html>
</asp:Content>
