﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="CirculoNegocios.Web.Home" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#carousel-990819').carousel({
                interval: 3000
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="row clearfix">
            <div class="col-md-2 column">
                <%--BANNER LATERAL ESQUERDA--%>
                <asp:Repeater ID="rptBannerLateralEsquerda" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                            <img alt="140x140" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<img alt="140x140" src="img/marketing/mk1.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                <img alt="140x140" src="img/marketing/mk2.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                <img alt="140x140" src="img/marketing/mk3.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                <img alt="140x140" src="img/marketing/mk1.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                <img alt="140x140" src="img/marketing/mk2.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />
                <img alt="140x140" src="img/marketing/mk3.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />--%>
                <h2>
                    <asp:Literal ID="litTituloNoticiaLateralEsquerda" runat="server"></asp:Literal></h2>
                <p>
                    <asp:Literal ID="litSinopseNoticiaLateralEsquerda" runat="server"></asp:Literal>
                </p>
                <p>
                    <asp:LinkButton ID="lnkLeiaMaisNoticiaLateralEsquerda" OnClick="lnkLeiaMaisNoticiaLateralEsquerda_Click"
                        runat="server" Text="Leia mais »" Visible="false"></asp:LinkButton></p>
            </div>
            <div class="col-md-6 column">
                <div class="carousel slide" id="carousel-990819">
                    <ol class="carousel-indicators">
                        <asp:Repeater ID="rptCabecalhoBannerPrincipal" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li data-slide-to='<%#DataBinder.Eval(Container.DataItem,"Enum").ToString() %>' data-target="#carousel-990819"
                                    class='<%#DataBinder.Eval(Container.DataItem,"ClassCssCabecalho").ToString() %>'>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li data-slide-to="0" data-target="#carousel-990819" class="active"></li>
                        <li data-slide-to="1" data-target="#carousel-990819"></li>
                        <li data-slide-to="2" data-target="#carousel-990819"></li>--%>
                    </ol>
                    <div class="carousel-inner">
                        <asp:Repeater ID="rptBannerPrincipal" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class='<%#DataBinder.Eval(Container.DataItem,"ClassCssItem").ToString() %>'>
                                    <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                                    <img width="1500px" height="600px" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("BannerPrincipal"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("BannerPrincipal")) %>' />
                                    <div class="carousel-caption">
                                        <h4>
                                            <asp:Literal ID="litTitulo" runat="server"></asp:Literal>
                                        </h4>
                                        <p>
                                            <asp:Literal ID="litDescricao" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Descricao").ToString() %>' Visible="false"></asp:Literal>
                                        </p>
                                    </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <a class="left carousel-control" href="#carousel-990819" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                            href="#carousel-990819" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                            </span></a>
                </div>
                <%--<blockquote>
                    <p>
                        
                    <asp:Literal ID="litDescricaoBannerAtivo" runat="server"></asp:Literal>
                    </p>
                    <small><asp:Literal ID="litRodapeBannerAtivo" runat="server"></asp:Literal> <cite><asp:Literal ID="litRodape2BannerAtivo" runat="server"></asp:Literal></cite></small>
                </blockquote>--%>
                <div class="row clearfix">
                    <div class="col-md-7 column" style="margin-top: 10px">
                        <%--Noticia Central Esquerda 1--%>
                        <div class="media">
                            <asp:LinkButton ID="lnkNoticiaCentralEsquerda1" OnClick="lnkNoticiaCentralEsquerda1_Click" runat="server" class="pull-left">
                                <asp:Image ID="ImgNoticiaCentralEsquerda1" CssClass="media-object" runat="server" Width="90px" Height="80px" />
                            </asp:LinkButton>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">-
                                    <asp:Literal ID="litTituloNoticiaCentraEsquerda1" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px"><asp:Literal ID="litSinopseNoticiaCentraEsquerda1" runat="server"></asp:Literal></p>
                            </div>
                        </div>
                        <hr />
                        <%--Noticia Central Esquerda 2--%>
                        <div class="media">
                            <asp:LinkButton ID="lnkNoticiaCentralEsquerda2" OnClick="lnkNoticiaCentralEsquerda2_Click" runat="server" class="pull-left">
                                <asp:Image ID="ImgNoticiaCentralEsquerda2" CssClass="media-object" runat="server"
                                    Width="90px" Height="80px" /></asp:LinkButton>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">
                                    -
                                    <asp:Literal ID="litTituloNoticiaCentraEsquerda2" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentraEsquerda2" runat="server"></asp:Literal></p>
                            </div>
                        </div>
                        <hr />
                        <%--Noticia Central Esquerda 3--%>
                        <div class="media">
                            <asp:LinkButton ID="lnkNoticiaCentralEsquerda3" OnClick="lnkNoticiaCentralEsquerda3_Click" runat="server" class="pull-left">
                            <asp:Image ID="ImgNoticiaCentralEsquerda3" CssClass="media-object" runat="server"
                                Width="90px" Height="80px" /></asp:LinkButton>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">-
                                    <asp:Literal ID="litTituloNoticiaCentraEsquerda3" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentraEsquerda3" runat="server"></asp:Literal>
                                </p>
                            </div>
                        </div>
                        <br />
                        <%--<img src="img/marketing/07.png" style="width: 303px; height: 232px" />--%><asp:Image
                            ID="imgBannerCentral" runat="server" Width="303px" Height="232px" />
                    </div>
                    <div class="col-md-5 column">
                        <h2>
                            <asp:Literal ID="litTituloNoticiaDestaqueDireita" runat="server"></asp:Literal>
                        </h2>
                        <p style="font-size: 12px">
                            <asp:Literal ID="litSinopseNoticiaDestaqueDireita" runat="server"></asp:Literal>
                        </p>
                        <p>
                            <asp:LinkButton ID="lnkLeiaMaisNoticiaDestaqueDireita" OnClick="lnkLeiaMaisNoticiaDestaqueDireita_Click"
                                runat="server" Text="Leia mais »" Visible="false"></asp:LinkButton>
                        </p>
                        <br />
                    </div>
                    <%--NOTICIAS CENTRAL DIREITO (4 NOTICIAS)--%>
                    <div class="col-md-5 column">
                        <div style="width: 95px; float: left;">
                            <asp:LinkButton ID="lnkNoticiaCentralDireita1" OnClick="lnkNoticiaCentralDireita1_Click" runat="server">
                                <asp:Image ID="imgNoticiaCentralDireita1" Width="95px" Height="70px" runat="server" />
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                    <asp:Literal ID="litTituloNoticiaCentralDireita1" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentralDireita1" runat="server"></asp:Literal></p>
                            </asp:LinkButton>
                        </div>
                        <div style="width: 15px; float: left;">
                            &nbsp</div>
                        <div style="width: 95px; float: left;">
                            <asp:LinkButton ID="lnkNoticiaCentralDireita2" OnClick="lnkNoticiaCentralDireita2_Click" runat="server">
                                <asp:Image ID="imgNoticiaCentralDireita2" runat="server" Width="95px" Heigh="70px" />
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                    <asp:Literal ID="litTituloNoticiaCentralDireita2" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentralDireita2" runat="server"></asp:Literal></p>
                            </asp:LinkButton>
                        </div>
                        <hr />
                        <div style="width: 95px; float: left;">
                            <asp:LinkButton ID="lnkNoticiaCentralDireita3" runat="server" OnClick="lnkNoticiaCentralDireita3_Click">
                                <asp:Image ID="imgNoticiaCentralDireita3" runat="server" Width="95px" Heigh="70px" />
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                    <asp:Literal ID="litTituloNoticiaCentralDireita3" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentralDireita3" runat="server"></asp:Literal></p>
                            </asp:LinkButton>
                        </div>
                        <div style="width: 15px; float: left;">
                            &nbsp</div>
                        <div style="width: 95px; float: left;">
                            <asp:LinkButton ID="lnkNoticiaCentralDireita4" runat="server" OnClick="lnkNoticiaCentralDireita4_Click">
                                <asp:Image ID="imgNoticiaCentralDireita4" runat="server" Width="95px" Heigh="70px" />
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                    <asp:Literal ID="litTituloNoticiaCentralDireita4" runat="server"></asp:Literal></h4>
                                <p style="font-size: 12px">
                                    <asp:Literal ID="litSinopseNoticiaCentralDireita4" runat="server"></asp:Literal></p>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
                <!-- UOLLLLL -->
                <div class="horizontalFixo fixoProdutos">
                    <h3>
                        <b>Em breve Vídeos Interessantes...</b></h3>
                    <ul class="produtos">
                        <asp:Repeater ID="rptVideosInteressantes" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                                    <img width="120" height="85" class="opacity-90 lazyload" src="img/marketing/00.jpg">
                                </span><strong class="opacity-60">Eget metus</strong><br />
                                    <span class="opacity-60 cor7">Eget metus. Fusce dapibus, tellus ac cursus comm.!</span>
                                </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <!-- UOLLLLL -->
            </div>
            <div class="col-md-4 column">
                <div class="row clearfix">
                    <div class="col-md-6 column">
                        <h4 style="text-align: center">
                            .::Promoção::.</h4>
                        <%--PROMOCOES--%>
                        <asp:Repeater ID="rptPromocoes" runat="server">
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
                    <div class="col-md-6 column">
                        <h2>
                            <asp:Literal ID="litTituloNoticiaLateralDireita" runat="server"></asp:Literal>
                        </h2>
                        <p>
                            <asp:Literal ID="litSinopseNoticiaLateralDireita" runat="server"></asp:Literal>
                        </p>
                        <p>
                            <asp:LinkButton ID="lnkLerMaisNoticiaLateralDireita" OnClick="lnkLerMaisNoticiaLateralDireita_Click" runat="server" Text="Leia mais »"
                                Visible="false"></asp:LinkButton>
                        </p>
                        <%--BANNER LATERAL DIREITO--%>
                        <asp:Repeater ID="rptBannerLateralDireita" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div style="margin: 10px 0px 10px 0px; text-align: center">
                                    <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                                        <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                            class="img-thumbnail" />
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<div style="margin: 10px 0px 10px 0px; text-align: center">
                            <img src="img/marketing/09.png" class="img-thumbnail" />
                        </div>--%>
                        <%--<img alt="140x140" src="img/mk3.jpg" class="img-thumbnail" style="margin: 10px 0px 10px 0px" />--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 column">
        <div class="row clearfix">
            <%--BANNER INFERIORES DO LADO ESQUERDO--%>
            <div class="col-md-2 column">
                <asp:Repeater ID="rptBannerInferiorEsquerdo" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                                <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                    class="img-thumbnail" /></a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-8 column">
                <div class="moduloHorizontal">
                    <table width="100%" class="borda">
                        <tr>
                            <td>
                                <h3 style="color: #ffffff; padding-left: 15px">
                                    <b>Mais Procuradas... </b>
                                </h3>
                            </td>
                            <td style="padding-right: 15px">
                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                        <asp:TextBox ID="txtBuscaNoticiasMais" CssClass="form-control" Width="150px" runat="server"></asp:TextBox></li>
                                    <li>&nbsp;
                                        <asp:Button ID="btnBuscarNoticiasMais" runat="server" CssClass="btn btn-default"
                                            Text="Buscar" OnClick="btnBuscarNoticiasMais_Click" /></li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                    <div class="itens">
                        <ul>
                            <asp:Repeater ID="rptNoticiasMaisProcuradas" runat="server">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li><a class="opacity-hover" href='<%#string.Format("LerMais.aspx?id={0}", DataBinder.Eval(Container.DataItem,"id").ToString()) %>'>
                                        <img class="opacity-90 lazyload" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemHome").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemHome").ToString().LastIndexOf("HomeNoticia"), DataBinder.Eval(Container.DataItem,"imagemHome").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemHome").ToString().LastIndexOf("HomeNoticia")) %>'
                                            width="140" height="98">
                                        <span class="detNoticia">
                                            <asp:Literal ID="litSinopse" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"titulo").ToString() %>'></asp:Literal></span>
                                    </a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--<li><a class="opacity-hover" href="#">
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/nasi17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Virada cultural agita SP e você ouve o melhor das atrações</span>
                            </a></li>
                            <li><a class="opacity-hover" href="#">
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/mv17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Vitrola livre especial Virada tem MV Bill, União Black e outros</span>
                            </a></li>
                            <li><a class="opacity-hover" href="#" >
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/paul17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Ex-vocalista do Iron Paul Dianno faz 55 anos; ouça clássicos</span>
                            </a></li>
                            <li><a class="opacity-hover" href="#" >
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/nasi17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Virada cultural agita SP e você ouve o melhor das atrações</span>
                            </a></li>
                            <li><a class="opacity-hover" href="#" >
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/mv17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Vitrola livre especial Virada tem MV Bill, União Black e outros</span>
                            </a></li>
                            <li><a class="opacity-hover" href="#" >
                                <img class="opacity-90 lazyload" src="http://h.imguol.com/1405/paul17k.jpg" width="140"
                                    height="98">
                                <span class="detNoticia">Ex-vocalista do Iron Paul Dianno faz 55 anos; ouça clássicos</span>
                            </a></li>--%>
                        </ul>
                    </div>
                </div>
                <div class="horizontalFixo fixoProdutos" style="margin-bottom: 25px;">
                    <h3>
                        <b>Ofertas</b></h3>
                    <ul class="produtos">
                        <asp:Repeater ID="rptOfertas" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li class="primeiro"><a class="opacity-hover" href='<%#DataBinder.Eval(Container.DataItem,"link").ToString() %>'
                                    target="_blank"><span class="borda5 img">
                                        <img width="112px" height="112px" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Ofertas"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Ofertas")) %>'>
                                    </span><strong class="opacity-60">'<%#DataBinder.Eval(Container.DataItem,"titulo").ToString() %>'</strong><br />
                                    <span class="opacity-60 cor7">'<%#DataBinder.Eval(Container.DataItem,"descricao").ToString() %>'</span>
                                </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img src="img/marketing/14.jpg">
                        </span><strong class="opacity-60">Eget metus</strong><br /> <span class="opacity-60 cor7">
                            Eget metus. Fusce dapibus, tellus ac cursus comm.!</span> </a></li>
                        <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img src="img/marketing/15.jpg">
                        </span><strong class="opacity-60">Metus scelerisque ante</strong><br /> <span class="opacity-60 cor7">
                            Eget metus. Fusce dapibus, tellus ac.</span> </a></li>
                        <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img src="img/marketing/16.jpg">
                        </span><strong class="opacity-60">Nulla vel </strong><br /><span class="opacity-60 cor7">Cras
                            sit amet nibh libero, in gravida nulla. </span></a></li>
                        <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img src="img/marketing/17.jpg">
                        </span><strong class="opacity-60">Metus scelerisque ante</strong> <br /><span class="opacity-60 cor7">
                            Eget metus. Fusce dapibus, tellus ac.</span> </a></li>--%>
                    </ul>
                </div>
            </div>
            <div class="col-md-2 column">
                <%--BANNERS INFERIORES DO LADO DIREITO--%>
                <asp:Repeater ID="rptBannerInferiorDireita" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <a href='<%#string.Format(@"DetalheCliente.aspx?idCliente={0}", DataBinder.Eval(Container.DataItem,"idCliente").ToString()) %>'>
                                <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                    class="img-thumbnail" /></a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
