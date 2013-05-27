<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ESTADO_JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ESTADO_JOGOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODESTADO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODESTADO) %>
            <%: Html.ValidationMessageFor(model => model.CODESTADO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRESTADO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRESTADO) %>
            <%: Html.ValidationMessageFor(model => model.DCRESTADO) %>
        </div>

        <p>
            <input type="submit" value="Save" />
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
