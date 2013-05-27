<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login</h2>

    <asp:Login ID="Login1" runat="server" LoginButtonText="Entrar" PasswordLabelText="Senha:" PasswordRequiredErrorMessage="Informe a Senha." RememberMeText="Lembrar na próxima vez." TitleText="" UserNameLabelText="Nome do Usuário:" UserNameRequiredErrorMessage="Informe o Usuário." VisibleWhenLoggedIn="False"></asp:Login>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
