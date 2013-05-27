<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.COMENTARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>COMENTARIOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCOM) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODCOM) %>
            <%: Html.ValidationMessageFor(model => model.CODCOM) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU, "USUARIOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODNOT, "NOTICIAS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODNOT", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODNOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRCOM) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRCOM) %>
            <%: Html.ValidationMessageFor(model => model.DCRCOM) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATCOM) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATCOM) %>
            <%: Html.ValidationMessageFor(model => model.DATCOM) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SITUACOM) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SITUACOM) %>
            <%: Html.ValidationMessageFor(model => model.SITUACOM) %>
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
