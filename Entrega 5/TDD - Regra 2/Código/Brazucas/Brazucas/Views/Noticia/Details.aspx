<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.NOTICIAS>" %>

<script runat="server">
    protected void SalvarComentario(object sender, EventArgs e)
    {
        Brazucas.Models.COMENTARIOS Comentario = new Brazucas.Models.COMENTARIOS();
        Brazucas.Models.BrazucasEntities BD = new Brazucas.Models.BrazucasEntities();
        Comentario.CODNOT = Model.CODNOT;        
        Comentario.CODUSU = 1;
        Comentario.DATCOM = DateTime.Today.Date;
        Comentario.DCRCOM = TextBox1.Text;        
        BD.COMENTARIOS.Add(Comentario);
        BD.SaveChanges();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Notícias
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <!--Imagem e Notícias-->
    <hgroup class="title">
        <h1><%: Html.DisplayFor(model => model.TITULONOT) %>.</h1>
    </hgroup>    
    <div>        
        <div id="imagem">
            <%--<asp:Image ID="Image1" ImageUrl="<%Model.IMAGENOT.ToString()%>" runat="server"  Height="180px" ImageAlign="Top" />--%>
            <asp:Image ID="Image1" ImageUrl="../../Images/Penguins.jpg" runat="server" Height="180px" ImageAlign="Top" />
        </div>
        <div id="texto">
            <%: Html.DisplayFor(model => model.DCRNOT) %>
        </div>
    </div>
    <!--Fim Imagem e Notícias-->  
    <!--Formulario de Comentarios-->  
    <div>Deixe seu Comentário:
        <table id="FormularioComentario">
            <tr>
                <td>
                    <div id="Avatar">
                        <asp:Image ID="Image2" ImageUrl="../../Images/Avatar.jpg" runat="server" Height="50px" />
                    </div>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="SalvarComentario" />
                </td>
            </tr>
        </table>
    </div>
    <!--Fim formulario de Comentarios-->
    <!--Comentarios-->
    <div id="comentarios">
        <div id="ConteudoCom">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ListaComentarios">
                <AlternatingItemTemplate>
                    <div id="Avatar">
                        <asp:Image ID="Image2" ImageUrl="../../Images/Avatar.jpg" runat="server" Height="50px" />
                    </div>
                    <span style="">Usuário:
                <asp:Label ID="CODUSULabel" runat="server" Text='<%# Eval("CODUSU") %>' />
                        <br />
                        Comentário:
                <asp:Label ID="DCRCOMLabel" runat="server" Text='<%# Eval("DCRCOM") %>' />
                        <br />
                        <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">CODUSU:
                <asp:TextBox ID="CODUSUTextBox" runat="server" Text='<%# Bind("CODUSU") %>' />
                        <br />
                        DCRCOM:
                <asp:TextBox ID="DCRCOMTextBox" runat="server" Text='<%# Bind("DCRCOM") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">CODUSU:
                <asp:TextBox ID="CODUSUTextBox" runat="server" Text='<%# Bind("CODUSU") %>' />
                        <br />
                        DCRCOM:
                <asp:TextBox ID="DCRCOMTextBox" runat="server" Text='<%# Bind("DCRCOM") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">CODUSU:
                <asp:Label ID="CODUSULabel" runat="server" Text='<%# Eval("CODUSU") %>' />
                        <br />
                        DCRCOM:
                <asp:Label ID="DCRCOMLabel" runat="server" Text='<%# Eval("DCRCOM") %>' />
                        <br />
                        <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="Avatar">
                        <asp:Image ID="Image2" ImageUrl="../../Images/Avatar.jpg" runat="server" Height="50px" />
                    </div>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">CODUSU:
                <asp:Label ID="CODUSULabel" runat="server" Text='<%# Eval("CODUSU") %>' />
                        <br />
                        DCRCOM:
                <asp:Label ID="DCRCOMLabel" runat="server" Text='<%# Eval("DCRCOM") %>' />
                        <br />
                        <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
        <asp:EntityDataSource ID="ListaComentarios" runat="server" ConnectionString="name=BrazucasEntities" DefaultContainerName="BrazucasEntities" EnableFlattening="False" EntitySetName="COMENTARIOS" Select="it.[CODUSU], it.[DCRCOM]" AutoGenerateOrderByClause="True">
        </asp:EntityDataSource>
    </div>
    <!--Fim Comentarios-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
