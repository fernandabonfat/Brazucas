<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.TIPO_USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>TIPO_USUARIOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODTIPUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODTIPUSU) %>
            <%: Html.ValidationMessageFor(model => model.CODTIPUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRTIPUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRTIPUSU) %>
            <%: Html.ValidationMessageFor(model => model.DCRTIPUSU) %>
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
