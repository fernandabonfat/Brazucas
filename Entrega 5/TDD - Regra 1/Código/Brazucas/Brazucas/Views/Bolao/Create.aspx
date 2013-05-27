<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.BOLAO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>BOLAO</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODRODADA, "RODADA") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODRODADA", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODRODADA) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODJOGO, "JOGOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODJOGO", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODJOGO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU, "USUARIOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VENCJOGO) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VENCJOGO) %>
            <%: Html.ValidationMessageFor(model => model.VENCJOGO) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATAPOSTA) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATAPOSTA) %>
            <%: Html.ValidationMessageFor(model => model.DATAPOSTA) %>
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
