<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="LerMais.aspx.cs" Inherits="CirculoNegocios.Web.LerMais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="col-lg-8">
            <div style="margin-left: 20px;">
                <div class="page-header">
                    <h1><asp:Literal ID="litTituloNoticia" runat="server"></asp:Literal></h1>
                </div>
                <div class="img-rounded">
                    <asp:Image ID="imgPrincipal" runat="server" Width="680px" Height="520px" />
                </div>
                <br />
                <blockquote>
                    <p>
                        <asp:Literal ID="litRodape1Foto" runat="server"></asp:Literal></p>
                    <small>
                        <asp:Literal ID="litRodape2Foto" runat="server"></asp:Literal></small>
                </blockquote>
                <br />
                <asp:Literal ID="litDescricaoNoticia" runat="server"></asp:Literal>
                <br />
                <br />
                <br />
            </div>
        </div>
        <div class="col-md-4 column">
            <asp:Repeater ID="rptPromocoesNoticias" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div style="margin: 10px 0px 10px 0px; text-align: center">
                        <a href='<%#DataBinder.Eval(Container.DataItem,"link").ToString() %>' target="_blank">
                            <p>
                                <asp:Literal ID="litTitulo" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"titulo").ToString() %>'></asp:Literal></p>
                            <img width="115px" height="75px" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Promocoes"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Promocoes")) %>'
                                class="img-thumbnail" /></a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
