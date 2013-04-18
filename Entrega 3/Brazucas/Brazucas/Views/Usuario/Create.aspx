<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Registre-se</h2>
    <br />
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>USUARIOS</legend>

        <div class="editor-label">
            Nome completo:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMUSU) %>
            <%: Html.ValidationMessageFor(model => model.NOMUSU) %>
        </div>

        <div class="editor-label">
            LOGIN:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LOGINUSU) %>
            <%: Html.ValidationMessageFor(model => model.LOGINUSU) %>
        </div>

        <div class="editor-label">
            SENHA:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SENHAUSU) %>
            <%: Html.ValidationMessageFor(model => model.SENHAUSU) %>
        </div>

        <div class="editor-label">
            EMAIL:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EMAILUSU) %>
            <%: Html.ValidationMessageFor(model => model.EMAILUSU) %>
        </div>

        <div class="editor-label">
            Sexo:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SEXUSU) %>
            <%: Html.ValidationMessageFor(model => model.SEXUSU) %>
        </div>

        <div class="editor-label">
            Data de Nascimento:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATNASCUSU) %>
            <%: Html.ValidationMessageFor(model => model.DATNASCUSU) %>
        </div>

        <div class="editor-label">
            CPF ou CNPJ:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CPFCNPJUSU) %>
            <%: Html.ValidationMessageFor(model => model.CPFCNPJUSU) %>
        </div>

        <div class="editor-label">
            Telefone:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TELUSU) %>
            <%: Html.ValidationMessageFor(model => model.TELUSU) %>
        </div>

        <p>
            <input type="submit" value="Salvar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
