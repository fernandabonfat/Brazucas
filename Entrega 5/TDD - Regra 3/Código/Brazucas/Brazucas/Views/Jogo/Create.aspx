<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>JOGOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODJOGO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODJOGO) %>
            <%: Html.ValidationMessageFor(model => model.CODJOGO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODFASE, "FASE_JOGOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODFASE", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODFASE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODESTADO, "ESTADO_JOGOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODESTADO", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODESTADO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCID, "CIDADE_SEDE") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SELECAO_A) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SELECAO_A) %>
            <%: Html.ValidationMessageFor(model => model.SELECAO_A) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SELECAO_B) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SELECAO_B) %>
            <%: Html.ValidationMessageFor(model => model.SELECAO_B) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATJOGO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATJOGO) %>
            <%: Html.ValidationMessageFor(model => model.DATJOGO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VENCJOGO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VENCJOGO) %>
            <%: Html.ValidationMessageFor(model => model.VENCJOGO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PLACAR_A) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PLACAR_A) %>
            <%: Html.ValidationMessageFor(model => model.PLACAR_A) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PLACAR_B) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PLACAR_B) %>
            <%: Html.ValidationMessageFor(model => model.PLACAR_B) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
