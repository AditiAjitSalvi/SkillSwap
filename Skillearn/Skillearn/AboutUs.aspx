<%@ Page Title="About Us" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Skillearn.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .fade-in {
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
    </style>

    <div class="fade-in">
        <h1>About Skillearn</h1>
        <p>Welcome to Skillearn, a platform where you can learn and share new skills. We connect learners with skill partners who help each other grow through peer-to-peer learning.</p>
    </div>
</asp:Content>
