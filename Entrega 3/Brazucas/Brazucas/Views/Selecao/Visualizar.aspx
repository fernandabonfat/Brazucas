<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Visualizar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Seleções</h2>
    <br /><br />    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ListaSelecoes">
        <ItemTemplate>
            <asp:Image ImageUrl="~/Images/Penguins.jpg" DescriptionUrl="~/Views/Noticia/Details.aspx" Height="50px" ImageAlign="Bottom" ID="Image1" runat="server" />
            <a href="Details/<%# DataBinder.Eval(Container,"CODNOT") %>">
                <%# DataBinder.Eval(Container.DataItem,"TITULONOT") %>
            </a>
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="ListaSelecoes" runat="server" ConnectionString="Data Source=Note-Eduardo\SQLEXPRESS;Initial Catalog=Brazucas;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [NOMSELE], [HISTORIA] FROM [SELECOES] ORDER BY [CODSELE]"></asp:SqlDataSource>
    <asp:EntityDataSource ID="ListaNoticias" runat="server" ConnectionString="name=BrazucasEntities" DefaultContainerName="BrazucasEntities" EnableFlattening="False" EntitySetName="NOTICIAS" Select="it.[CODNOT], it.[TITULONOT], it.[DCRNOT], it.[IMAGENOT]">
    </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
