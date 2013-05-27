<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Registre-se
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Novo Usuário</h2>
    <br />
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>USUARIOS</legend>
           

        Nome Completo
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMUSU) %>
            <%: Html.ValidationMessageFor(model => model.NOMUSU) %>
        </div>

        E-Mail
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EMAILUSU) %>
            <%: Html.ValidationMessageFor(model => model.EMAILUSU) %>
        </div>

        Sexo
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SEXUSU) %>
            <%: Html.ValidationMessageFor(model => model.SEXUSU) %>
        </div>

        Data De Nascimento
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATNASCUSU) %>
            <%: Html.ValidationMessageFor(model => model.DATNASCUSU) %>
        </div>

        Login
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LOGINUSU) %>
            <%: Html.ValidationMessageFor(model => model.LOGINUSU) %>
        </div>

        Senha
        <div class="editor-field">
            <%: Html.PasswordFor(model => model.SENHAUSU) %>
            <%: Html.ValidationMessageFor(model => model.SENHAUSU) %>
        </div>

        CPF/CNPJ
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CPFCNPJUSU) %>
            <%: Html.ValidationMessageFor(model => model.CPFCNPJUSU) %>
        </div>

        Telefone
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TELUSU) %>
            <%: Html.ValidationMessageFor(model => model.TELUSU) %>
        </div>

        <p>
            <input type="submit" value="Confirmar" />
        </p>
    </fieldset>
    <% } %>

    <div>
        <%: Html.ActionLink("Voltar", "Index", "Home") %>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
