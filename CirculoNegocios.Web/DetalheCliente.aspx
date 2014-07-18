<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true" CodeBehind="DetalheCliente.aspx.cs" Inherits="CirculoNegocios.Web.DetalheCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript" src="js/infobox.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#carousel-970968').carousel({
                interval: 2500
            })
        });
    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <a href="javascript:history.go(-1)">Voltar</a>
                    <div class="page-header">
                        <h1>
                            <asp:Literal ID="litNomeCliente" runat="server"></asp:Literal><small><asp:Literal
                                ID="litSubTitulo" runat="server"></asp:Literal></small></h1>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-2 column" style="text-align: center; margin-top: 10px;">
                            <asp:Image ID="imgCliente" runat="server" Width="190px" Height="155px"/>
                        </div>
                        <div class="col-md-10 column">
                            <div class="jumbotron well" style="background-color: #ea9355; color: #ffffff; border-color: #db6613; margin-left: 15px;">
                                <h1>Quem somos?</h1>
                                <p>
                                    <asp:Literal ID="litQuemSomos" runat="server"></asp:Literal>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="col-md-4 column">
                                <h2 class="text-danger">Serviços</h2>
                                <ul style="margin-left: 20px">
                                    <asp:Repeater ID="rptServicos" runat="server">
                                        <HeaderTemplate></HeaderTemplate>
                                        <ItemTemplate>
                                            <li>
                                                <asp:Literal ID="litServicos" runat="server" Text='<%# Container.DataItem%>'></asp:Literal></li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <%--<li>Carimbos em geral</li>
                                <li>Cartuchos e toners compativeis e recargas</li>
                                <li>Cartões de visita e folders-Manutenção de impressão em geral</li>
                                <li>Instalação de Bulk lnk</li>--%>
                                </ul>
                                <br />
                                <h2 class="text-danger">Contato</h2>
                                <address contenteditable="true">
                                    <strong>
                                        <asp:Literal ID="litNomeEmpresa" runat="server"></asp:Literal></strong><br />
                                    Email: <a>
                                        <asp:Literal ID="litEmail" runat="server"></asp:Literal></a><br />
                                    Endereço:
                                    <asp:Literal ID="litEndereco" runat="server"></asp:Literal><br />
                                    Cep:
                                    <asp:Literal ID="litCep" runat="server"></asp:Literal><br />
                                    Telefone:
                                    <asp:Literal ID="litTelefone" runat="server"></asp:Literal><br />
                                    Funcionamento: De segunda a sexta das
                                    <asp:Literal ID="litHoraInicioSemana" runat="server"></asp:Literal>
                                    às
                                    <asp:Literal ID="litHoraFimSemana" runat="server"></asp:Literal><br />
                                    Sábado das
                                    <asp:Literal ID="litHoraInicioFds" runat="server"></asp:Literal>
                                    às
                                    <asp:Literal ID="litHoraFimFds" runat="server"></asp:Literal><br />
                                </address>
                            </div>
                            <div class="col-md-8 column">
                                <div class="carousel slide" id="carousel-970968" style="margin-top: 100px">
                                    <ol class="carousel-indicators">
                                        <li class="active" data-slide-to="0" data-target="#carousel-970968"></li>
                                        <li data-slide-to="1" data-target="#carousel-970968" class=""></li>
                                        <li data-slide-to="2" data-target="#carousel-970968" class=""></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <asp:Image ID="ImgCliente1" runat="server" />
                                        </div>
                                        <div class="item">
                                            <asp:Image ID="ImgCliente2" runat="server" />
                                        </div>
                                        <div class="item">
                                            <asp:Image ID="ImgCliente3" runat="server" />
                                        </div>
                                    </div>
                                    <a class="left carousel-control" href="#carousel-970968" data-slide="prev"><span
                                        class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                                            href="#carousel-970968" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                                </div>
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>

                        <div class="col-md-12 column">
                            <div id="map_canvas" style="width: 100%; height: 400px;"></div>
                            <br /><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
