<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="Categorias.aspx.cs" Inherits="CirculoNegocios.Web.Categorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .oculto
        {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="jumbotron bgo">
            <h1>
                Categorias</h1>
            <p>
                Encontre o que você está procurando!</p>
        </div>
        <div class="col-lg-12">
            <div class="view">
                <div class="panel-group" id="panel-399848">
                    <div class="panel panel-default">
                        <asp:Repeater ID="rptCategorias" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="panel-heading">
                                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-399848"
                                        href="#<%#DataBinder.Eval(Container.DataItem,"id").ToString() %>" contenteditable="false">
                                        <%#DataBinder.Eval(Container.DataItem,"Nome").ToString() %></a>
                                    <asp:Label ID="lblId" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"id").ToString() %>'
                                        CssClass="oculto"></asp:Label>
                                </div>
                                <div id='<%#DataBinder.Eval(Container.DataItem,"id").ToString() %>' class="panel-collapse collapse"
                                    style="height: 0px;">
                                    <div class="panel-body" contenteditable="false">
                                        <asp:Repeater ID="rptSubCategorias" runat="server">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <span>
                                                    <%#DataBinder.Eval(Container.DataItem,"Nome").ToString() %></span><br />
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
