<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Editar Cadastro</h2>
    <br />
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>USUARIOS</legend>

        <div class="editor-label">
            Codigo do usuário: Obs.: Favor não alterar este campo.
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODUSU) %>
            <%: Html.ValidationMessageFor(model => model.CODTIPUSU) %>
        </div>
        
        <div class="editor-label">
            Tipo de Usuário:
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODTIPUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODTIPUSU) %>
        </div>

        <div class="editor-label">
            Nome Completo:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMUSU) %>
            <%: Html.ValidationMessageFor(model => model.NOMUSU) %>
        </div>

        <div class="editor-label">
            Email: 
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
            Login:
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LOGINUSU) %>
            <%: Html.ValidationMessageFor(model => model.LOGINUSU) %>
        </div>

        <div class="editor-label">
            CPF/CNPJ:
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
