﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheCliente.aspx.cs"
    Inherits="CirculoNegocios.Web.DetalheCliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Círculo de Negócios</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="n/a">
    <meta name="author" content="Marcio Coutinho">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
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
        function initialize() {
            var secheltLoc = new google.maps.LatLng(-23.6108174, -46.6379595, 17);

            var myMapOptions = {
                zoom: 15
                , center: secheltLoc
                , mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var theMap = new google.maps.Map(document.getElementById("map_canvas"), myMapOptions);


            var marker = new google.maps.Marker({
                map: theMap,
                draggable: true,
                position: new google.maps.LatLng(-23.6108174, -46.6379595, 17),
                visible: true
            });

            var boxText = document.createElement("div");
            boxText.style.cssText = "border:2px solid #FFF; margin-top: 8px;background:#FFF;color:#000;font-family:Arial, Helvetica, sans-serif;font-size:12px;padding: .5em 1em;-webkit-border-radius: 2px;-moz-border-radius: 2px;border-radius: 2px;text-shadow:0 -1p;-webkit-box-shadow: 0 0  8px;box-shadow: 0 0 8px;";
            boxText.innerHTML = "Shopping da Praça - Loja 57 - 58";

            var myOptions = {
                content: boxText
                , disableAutoPan: false
                , maxWidth: 0
                , pixelOffset: new google.maps.Size(-140, 0)
                , zIndex: null
                , boxStyle: {
                    background: "url('tipbox.gif') no-repeat"
                  , opacity: 0.75
                  , width: "260px"
                }
                , closeBoxMargin: "10px 2px 2px 2px"
                , closeBoxURL: "http://www.google.com/intl/en_us/mapfiles/close.gif"
                , infoBoxClearance: new google.maps.Size(1, 1)
                , isHidden: false
                , pane: "floatPane"
                , enableEventPropagation: false
            };

            google.maps.event.addListener(marker, "click", function (e) {
                ib.open(theMap, this);
            });

            var ib = new InfoBox(myOptions);
            ib.open(theMap, marker);
        }
    </script>
</head>
<body onload="initialize()">
    <form id="form1" runat="server">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <asp:Literal ID="litNomeCliente" runat="server"></asp:Literal><small><asp:Literal
                            ID="litSubTitulo" runat="server"></asp:Literal></small></h1>
                </div>
                <div class="row clearfix">
                    <div class="col-md-2 column" style="text-align: center; margin-top: 60px;">
                        <asp:Image ID="imgCliente" runat="server" />
                    </div>
                    <div class="col-md-10 column">
                        <div class="jumbotron well" style="background-color: #ea9355; color: #ffffff; border-color: #db6613">
                            <h1>
                                Quem somos?</h1>
                            <p>
                                <asp:Literal ID="litQuemSomos"
                                    runat="server"></asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="col-md-4 column">
                            <h2 class="text-danger">
                                Serviços</h2>
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
                            <h2 class="text-danger">
                                Contato</h2>
                            <address contenteditable="true">
                                <strong>
                                    <asp:Literal ID="litNomeEmpresa" runat="server"></asp:Literal></strong><br />
                                Email: <a>
                                    <asp:Literal ID="litEmail" runat="server"></asp:Literal></a><br />
                                Endereço: <asp:Literal ID="litEndereco" runat="server"></asp:Literal><br />
                                Cep: <asp:Literal ID="litCep" runat="server"></asp:Literal><br />
                                Telefone: <asp:Literal ID="litTelefone" runat="server"></asp:Literal><br />
                                Funcionamento: De segunda a sexta das <asp:Literal ID="litHoraInicioSemana" runat="server"></asp:Literal> às <asp:Literal ID="litHoraFimSemana" runat="server"></asp:Literal><br />
                                Sábado das <asp:Literal ID="litHoraInicioFds" runat="server"></asp:Literal> às <asp:Literal ID="litHoraFimFds" runat="server"></asp:Literal><br />
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
                                        <img alt="" src="http://lorempixel.com/1600/500/sports/1">
                                    </div>
                                    <div class="item">
                                        <img alt="" src="http://lorempixel.com/1600/500/sports/2">
                                    </div>
                                    <div class="item">
                                        <img alt="" src="http://lorempixel.com/1600/500/sports/3">
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-970968" data-slide="prev"><span
                                    class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                                        href="#carousel-970968" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                        </span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 column">
                        <div id="map_canvas" style="width: 100%; height: 400px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
