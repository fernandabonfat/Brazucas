<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.NOTICIAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Noticias
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Últimas Notícias</h2>
    <br /><br />    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ListaNoticias">
        <ItemTemplate>
            <asp:Image ImageUrl="~/Images/Penguins.jpg" DescriptionUrl="~/Views/Noticia/Details.aspx" Height="50px" ImageAlign="Bottom" ID="Image1" runat="server" />
            <a href="Details/<%# DataBinder.Eval(Container.DataItem,"CODNOT") %>">
                <%# DataBinder.Eval(Container.DataItem,"TITULONOT") %>
            </a>
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
    <asp:EntityDataSource ID="ListaNoticias" runat="server" ConnectionString="name=BrazucasEntities" DefaultContainerName="BrazucasEntities" EnableFlattening="False" EntitySetName="NOTICIAS" Select="it.[CODNOT], it.[TITULONOT], it.[DCRNOT], it.[IMAGENOT]">
    </asp:EntityDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
