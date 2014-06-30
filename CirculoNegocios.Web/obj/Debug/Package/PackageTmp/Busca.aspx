<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="Busca.aspx.cs" Inherits="CirculoNegocios.Web.Busca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="col-lg-10">
            <ul class="breadcrumb">
                <li>
                    <asp:LinkButton ID="lnkCategoriaBusca" runat="server">
                        <asp:Literal ID="litCategoriaBusca" runat="server" Text="Academia"></asp:Literal>
                    </asp:LinkButton><span class="divider"></span></li>
                <li>
                    <asp:LinkButton ID="lnkEstadoBusca" runat="server">
                        <asp:Literal ID="litEstadoBusca" runat="server" Text="Sao Paulo"></asp:Literal>
                    </asp:LinkButton><span class="divider"></span></li>
                    <li>
                        <asp:DropDownList ID="ddlCidadeFiltro" runat="server">
                        </asp:DropDownList>
                    </li>
                    <li>
                        <asp:DropDownList ID="ddlSubCategoriaFiltro" runat="server">
                        </asp:DropDownList>
                    </li>
                    <li>
                        <asp:Button ID="btnFiltrar" runat="server" CssClass="btn" Text="Filtrar" />
                    </li>
                <%--<li class="active">Santos</li>--%>
            </ul>
            <asp:Repeater ID="rptResultado" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="media">
                        <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"id").ToString()) %>'
                            class="pull-left">
                            <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"anexoLogoPath").ToString().Substring(DataBinder.Eval(Container.DataItem,"anexoLogoPath").ToString().LastIndexOf("LogotipoClientes"), DataBinder.Eval(Container.DataItem,"anexoLogoPath").ToString().Length - DataBinder.Eval(Container.DataItem,"anexoLogoPath").ToString().LastIndexOf("LogotipoClientes")) %>'
                                style="width: 100px; height: 100px" class="media-object" alt='' /></a>
                        <div class="media-body">
                            <h4 class="media-heading">
                                <asp:Literal ID="litNome" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"nome").ToString() %>'></asp:Literal></h4>
                            <asp:Literal ID="litServicos" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"servicos").ToString() %>'></asp:Literal>
                            <p>
                                <a class="btn" href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"id").ToString()) %>'>Saiba mais »</a></p>
                        </div>
                    </div>
                    <br />
                </ItemTemplate>
                <FooterTemplate>
                    <div>
                        <asp:LinkButton ID="lnkAnterior" runat="server" ToolTip="Anterior" OnClick="lnkAnterior_Click">Anterior</asp:LinkButton>
                        <asp:LinkButton ID="lnkProximo" runat="server" ToolTip="Próximo" OnClick="lnkProximo_Click">Próximo</asp:LinkButton>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
            <br />
            <br />
        </div>
        <div class="col-md-2 column">
            <asp:Repeater ID="rptBannersBusca" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                        <img alt="140x140" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                            class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                    </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
