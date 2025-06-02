<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="SkillBuddy.aspx.cs" Inherits="Skillearn.SkillBuddy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
    AOS.init();
</script>
    <asp:Label ID="lblMessage" runat="server" CssClass="alert alert-info"></asp:Label>
<asp:Repeater ID="rptSkillBuddies" runat="server">
    <ItemTemplate>
        <div class="card" data-aos="fade-up" style="margin: 15px; border: 1px solid #ccc; border-radius: 10px; padding: 15px; box-shadow: 0px 0px 10px #ccc;">
            <h3><%# Eval("FullName") %></h3>
            <p><strong>Email:</strong> <%# Eval("Email") %></p>
            <p><strong>Skill:</strong> <%# Eval("Skill") %></p>
            <p><strong>Experience:</strong> <%# Eval("Experience") %></p>
            <p><strong>About:</strong> <%# Eval("ProfileInfo") %></p>
            <p><strong>Status:</strong> <%# Eval("Status") %></p>
        </div>
    </ItemTemplate>
</asp:Repeater>

</asp:Content>
