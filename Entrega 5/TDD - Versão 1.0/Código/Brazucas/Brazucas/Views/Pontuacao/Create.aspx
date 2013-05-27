<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.PONTUACAO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>PONTUACAO</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODPONT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODPONT) %>
            <%: Html.ValidationMessageFor(model => model.CODPONT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRPONT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRPONT) %>
            <%: Html.ValidationMessageFor(model => model.DCRPONT) %>
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
