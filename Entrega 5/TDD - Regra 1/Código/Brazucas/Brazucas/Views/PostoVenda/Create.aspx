<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.POSTOSVENDAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>POSTOSVENDAS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODPOS) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODPOS) %>
            <%: Html.ValidationMessageFor(model => model.CODPOS) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ENDPOS) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ENDPOS) %>
            <%: Html.ValidationMessageFor(model => model.ENDPOS) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCID, "CIDADE_SEDE") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
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
