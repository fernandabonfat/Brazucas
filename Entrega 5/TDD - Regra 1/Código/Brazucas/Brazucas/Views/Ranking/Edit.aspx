<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.RANKING>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>RANKING</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODRAN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODRAN) %>
            <%: Html.ValidationMessageFor(model => model.CODRAN) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU, "USUARIOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODRODADA, "RODADA") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODRODADA", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODRODADA) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODPONT, "PONTUACAO") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODPONT", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODPONT) %>
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
