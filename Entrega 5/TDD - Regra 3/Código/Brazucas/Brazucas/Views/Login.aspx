<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Login</h2>
    <asp:LoginView ID="LoginView1" runat="server"></asp:LoginView>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
