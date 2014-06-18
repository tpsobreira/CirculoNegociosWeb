<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="CirculoNegocios.Web.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <a class="btn" href="#">Leia mais »</a></p>
            </div>
            <div class="col-md-6 column">
                <div class="carousel slide" id="carousel-990819">
                    <ol class="carousel-indicators">
                        <li data-slide-to="0" data-target="#carousel-990819"></li>
                        <li data-slide-to="1" data-target="#carousel-990819"></li>
                        <li data-slide-to="2" data-target="#carousel-990819" class="active"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/passador/1.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    First Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                    porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/passador/2.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    Second Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                    porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/passador/3.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    Third Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                    porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-990819" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                            href="#carousel-990819" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                            </span></a>
                </div>
                <blockquote>
                    <p>
                        
                    <asp:Literal ID="litDescricaoBannerAtivo" runat="server"></asp:Literal>
                    </p>
                    <small><asp:Literal ID="litRodapeBannerAtivo" runat="server"></asp:Literal> <cite><asp:Literal ID="litRodape2BannerAtivo" runat="server"></asp:Literal></cite></small>
                </blockquote>
                <div class="row clearfix">
                    <div class="col-md-7 column" style="margin-top: 10px">
                        <div class="media">
                            <a href="#" class="pull-left">
                                <img src="img/noticias/noticia1.jpg" class="media-object" alt='' /></a>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">
                                    - Nested media heading</h4>
                                <p style="font-size: 12px">
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante.</p>
                            </div>
                        </div>
                        <hr />
                        <div class="media">
                            <a href="#" class="pull-left">
                                <img src="img/noticias/noticia2.jpg" class="media-object" alt='' /></a>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">
                                    - Etiam porta sem malesuada</h4>
                                <p style="font-size: 12px">
                                    Tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus gravida
                                    nulla.</p>
                            </div>
                        </div>
                        <hr />
                        <div class="media">
                            <a href="#" class="pull-left">
                                <img src="img/noticias/noticia3.jpg" class="media-object" alt='' /></a>
                            <div class="media-body">
                                <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 16px;">
                                    - Vel metus scelerisque ante</h4>
                                <p style="font-size: 12px">
                                    Eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                            </div>
                        </div>
                        <br />
                        <img src="img/marketing/08.png" style="width: 100%" />
                    </div>
                    <div class="col-md-5 column">
                        <h2>
                            Heading
                        </h2>
                        <p style="font-size: 12px">
                            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                            commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                            Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                        </p>
                        <p>
                            <a class="btn" href="#">Leia mais »</a>
                        </p>
                    </div>
                    <div class="col-md-5 column">
                        <div style="width: 95px; float: left;">
                            <img src="img/noticias/noticia8.jpg" style="width: 95px; height: 70px" />
                            <h5 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                Mauris condi mentum</h5>
                            <p style="font-size: 12px">
                                Sem malesuada magna mollis euismod.</p>
                        </div>
                        <div style="width: 15px; float: left;">
                            &nbsp</div>
                        <div style="width: 95px; float: left;">
                            <img src="img/noticias/noticia7.jpg" style="width: 95px; height: 70px" />
                            <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 12px;">
                                Vel metus scelerisque ante</h4>
                            <p style="font-size: 12px">
                                tellus ac cursus commodo, tortor mauris condimentum nibh, ut</p>
                        </div>
                        <hr />
                        <div style="width: 95px; float: left;">
                            <img src="img/noticias/noticia6.jpg" style="width: 95px; height: 70px" />
                            <h5 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 14px;">
                                Mauris condi mentum</h5>
                            <p style="font-size: 12px">
                                Sem malesuada magna mollis euismod.</p>
                        </div>
                        <div style="width: 15px; float: left;">
                            &nbsp</div>
                        <div style="width: 95px; float: left;">
                            <img src="img/noticias/noticia5.jpg" style="width: 95px; height: 70px" />
                            <h4 class="media-heading" style="color: red; font-family: 'Trebuchet MS'; font-size: 12px;">
                                Vel metus scelerisque ante</h4>
                            <p style="font-size: 12px">
                                tellus ac cursus commodo, tortor mauris condimentum nibh, ut</p>
                        </div>
                    </div>
                </div>
                <!-- UOLLLLL -->
                <div class="horizontalFixo fixoProdutos">
                    <h3>
                        <b>Cursos Gratuitos</b></h3>
                    <ul class="produtos">
                        <asp:Repeater ID="rptDestaqueDia" runat="server">
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
                        <%--<li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img width="120" height="85" class="opacity-90 lazyload" src="img/marketing/00.jpg">
                        </span><strong class="opacity-60">Eget metus</strong><br /> <span class="opacity-60 cor7">
                            Eget metus. Fusce dapibus, tellus ac cursus comm.!</span> </a></li>
                        <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                            <img width="120" height="85" class="opacity-90 lazyload" src="img/marketing/12.jpg">
                        </span><strong class="opacity-60">Metus scelerisque ante</strong><br /> <span class="opacity-60 cor7">
                            Eget metus. Fusce dapibus, tellus ac.</span> </a></li>
                        <li class="primeiro"><a class="opacity-hover" href="#">  <span class="borda5 img">
                            <img width="120" height="85" class="opacity-90 lazyload" src="img/marketing/13.jpg">
                        </span><strong class="opacity-60">Nulla vel </strong><br /><span class="opacity-60 cor7">Cras
                            sit amet nibh libero, in gravida nulla. </span></a></li>--%>
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
                                    <p>
                                        <asp:Literal ID="litTitulo" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"titulo").ToString() %>'></asp:Literal></p>
                                    <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Promocoes"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Promocoes")) %>' class="img-thumbnail" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Fusce dapibus</p>
                            <img src="img/marketing/01.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Donec sed odio dui cursus</p>
                            <img src="img/marketing/02.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Cras sit amet nibh libero</p>
                            <img src="img/marketing/03.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Donec id elit non mi</p>
                            <img src="img/marketing/04.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Nulla vel metus</p>
                            <img src="img/marketing/05.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Fusce dapibus</p>
                            <img src="img/marketing/01.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Donec sed odio dui cursus</p>
                            <img src="img/marketing/02.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Nulla vel metus</p>
                            <img src="img/marketing/05.gif" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <p>
                                Cras sit amet nibh libero</p>
                            <img src="img/marketing/03.gif" class="img-thumbnail" />
                        </div>--%>
                    </div>
                    <div class="col-md-6 column">
                        <h2>
                            Heading
                        </h2>
                        <p>
                            Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
                            commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                            Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                        </p>
                        <p>
                            <a class="btn" href="#">Leia mais »</a>
                        </p>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <img src="img/marketing/07.png" class="img-thumbnail" />
                        </div>
                        <div style="margin: 10px 0px 10px 0px; text-align: center">
                            <img src="img/marketing/09.png" class="img-thumbnail" />
                        </div>
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
                            <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                class="img-thumbnail" />
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
                                    <li><a class="opacity-hover" href="#">
                                        <img class="opacity-90 lazyload" src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Noticias"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Noticias")) %>'
                                            width="140" height="98">
                                        <span class="detNoticia">
                                            <asp:Literal ID="litSinopse" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Sinopse").ToString() %>'></asp:Literal></span>
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
                                <li class="primeiro"><a class="opacity-hover" href="#"><span class="borda5 img">
                                    <img src="img/marketing/14.jpg">
                                </span><strong class="opacity-60">Eget metus</strong><br />
                                    <span class="opacity-60 cor7">Eget metus. Fusce dapibus, tellus ac cursus comm.!</span>
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
                            <img src='<%#System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners"), DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem,"imagemFilePath").ToString().LastIndexOf("Banners")) %>'
                                class="img-thumbnail" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
