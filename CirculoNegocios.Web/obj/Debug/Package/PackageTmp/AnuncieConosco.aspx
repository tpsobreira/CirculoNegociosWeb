﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="AnuncieConosco.aspx.cs" Inherits="CirculoNegocios.Web.AnuncieConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="jumbotron bgg">
            <h1>
                Anuncie conosco</h1>
        </div>
        <div class="tabbable" id="tabs-623579">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#panel-566275" data-toggle="tab">Seus dados</a> </li>
                <li><a href="#panel-605862" data-toggle="tab">Dados do seu Negócio</a> </li>
                <li><a href="#panel-605863" data-toggle="tab">Informações da sua Página Personalizada</a> </li>
                <%--<li><a href="#panel-605864" data-toggle="tab">Informações 2° página</a> </li>--%>
                <li><a href="#panel-605865" data-toggle="tab">Pagamento</a> </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="panel-566275">
                    <div id="passo1" class="formAnuncio">
                        <h2 class="text-danger">
                            Seus dados</h2>
                        <div class="view">
                            <form role="form">
                            <div class="form-group">
                                <label>
                                    Nome</label>
                                <input type="text" class="form-control" id="Nome" placeholder="Informe seu nome"
                                    style="width: 340px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Endereço</label>
                                <input type="text" class="form-control" id="Endereco" placeholder="Informe seu endereço"
                                    style="width: 400px">
                            </div>
                            <div class="form-group">
                                <label>
                                    CEP</label>
                                <input type="text" class="form-control" id="CEPResidencia" placeholder="0000-000"
                                    style="width: 100px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Bairro</label>
                                <input type="text" class="form-control" id="Text1" placeholder="Informe seu bairro"
                                    style="width: 150px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Bairro</label>
                                <input type="text" class="form-control" id="Text2" placeholder="Informe seu bairro"
                                    style="width: 150px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Telefone celular</label>
                                <input type="tel" class="form-control" id="Telefone2" placeholder="(00) 00000-0000"
                                    style="width: 140px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Informe seu email"
                                    style="width: 350px">
                            </div>
                            <a href="#panel-605862">Avançar</a>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="panel-605862">
                    <div id="passo2" class="formAnuncio">
                        <h2 class="alert-warning">
                            Dados de sua empresa</h2>
                        <div class="view">
                            <form role="form">
                            <div class="form-group">
                                <label>
                                    Razão social</label>
                                <input type="text" class="form-control" id="RazaoSocial" placeholder="Informe a razão social"
                                    style="width: 340px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Endereço</label>
                                <input type="text" class="form-control" id="Endereço" placeholder="Informe o endereço de sua empresa"
                                    style="width: 340px">
                            </div>
                            <div class="form-group">
                                <label>
                                    CEP</label>
                                <input type="text" class="form-control" id="CEPEmpresa" placeholder="0000-000" style="width: 100px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Telefone 1</label>
                                <input type="tel" class="form-control" id="TelefoneEmp1" placeholder="(00) 0000-0000"
                                    style="width: 140px">
                            </div>
                            <div class="form-group">
                                <label>
                                    Telefone 2</label>
                                <input type="tel" class="form-control" id="TelefoneEmp2" placeholder="(00) 0000-0000"
                                    style="width: 140px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Email</label>
                                <input type="email" class="form-control" id="Email1" placeholder="Informe o email da empresa"
                                    style="width: 350px">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Site</label>
                                <input type="url" class="form-control" id="SiteEmp" placeholder="Informe o site da empresa"
                                    style="width: 350px">
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="panel-605863">
                    <div id="passo3" class="formAnuncio">
                        <h2 class="alert-warning">
                            Informações - primeira página</h2>
                        <div class="view">
                            <form role="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Descreva de forma sucinta os serviços que sua empresa oferece</label>
                                <textarea class="form-control" id="Url1" placeholder="Texto livre" style="width: 500px;
                                    height: 100px;"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Horários de funcionamento</label>
                                <table>
                                    <tr>
                                        <td>
                                            Segunda à sexta:
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="InicioTrabalho">
                                        </td>
                                        <td>
                                            às
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time4">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Finais de semana:
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time1">
                                        </td>
                                        <td>
                                            às
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time5">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Logotipo de sua empresa</label>
                                <input type="file" id="exampleInputFile"><p class="help-block">
                                    Arquivo1lotipo.jpg</p>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Adicione até 3 imagens para propaganda</label>
                                <input type="file" id="File1">
                                <p class="help-block">
                                    Arquivo1Propagando1.jpg</p>
                                <p class="help-block">
                                    Arquivo1Propagando2.jpg</p>
                                <p class="help-block">
                                    Arquivo1Propagando3.jpg</p>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <%--<div class="tab-pane" id="panel-605864">
                    <div id="passo4" class="formAnuncio">
                        <h2 class="alert-warning">
                            Informações - segunda página</h2>
                        <div class="view">
                            <form role="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Descreva de forma sucinta os serviços que sua empresa oferece</label>
                                <textarea class="form-control" id="Textarea1" placeholder="Texto livre" style="width: 500px;
                                    height: 100px;"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Horários de funcionamento</label>
                                <table>
                                    <tr>
                                        <td>
                                            Segunda à sexta:
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time2">
                                        </td>
                                        <td>
                                            às
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Finais de semana:
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time6">
                                        </td>
                                        <td>
                                            às
                                        </td>
                                        <td>
                                            <input type="time" class="form-control" id="Time7">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Logotipo de sua empresa</label>
                                <input type="file" id="File2"><p class="help-block">
                                    Arquivo1lotipo.jpg</p>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">
                                    Adicione até 3 imagens para propaganda</label>
                                <input type="file" id="File3">
                                <p class="help-block">
                                    Arquivo1Propagando1.jpg</p>
                                <p class="help-block">
                                    Arquivo1Propagando2.jpg</p>
                                <p class="help-block">
                                    Arquivo1Propagando3.jpg</p>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>--%>
                <div class="tab-pane" id="panel-605865">
                    <div id="passo5" class="formAnuncio">
                        <h2 class="alert-warning">
                            Forma de pagamento</h2>
                        <div class="view">
                            <div id="comandos">
                                <div class="form-group">
                                    <br />
                                    <table>
                                        <tr>
                                            <td>
                                                <table cellspacing="10">
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                Plano Ouro:</h3>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Classificação na busca: <b>Alta</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Envios de E-mail Marketing/dia: <b>10.000</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Serviços Adicionais: <b>A definir...</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h5>
                                                                Valor: <b>179,90/por mês</b></h5>
                                                            <p class="help-block">
                                                                Valor válido<br />
                                                                para contrato de 12 meses
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
                                                            <form action="https://pagseguro.uol.com.br/v2/pre-approvals/request.html" method="post">
                                                            <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                                            <input type="hidden" name="code" value="C76C57EB2222EAAFF486FF8FF2674514" />
                                                            <input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/assinaturas/209x48-contratar-cinza-assina.gif"
                                                                name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                                                            </form>
                                                            <!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td width="8%">
                                            </td>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                Plano Prata:</h3>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Classificação na busca: <b>Média</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Envios de E-mail Marketing/dia: <b>5.000</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Serviços Adicionais: <b>A definir...</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h5>
                                                                Valor: <b>139,90/por mês</b></h5>
                                                            <p class="help-block">
                                                                Valor válido<br />
                                                                para contrato de 12 meses
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
                                                            <form action="https://pagseguro.uol.com.br/v2/pre-approvals/request.html" method="post">
                                                            <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                                            <input type="hidden" name="code" value="065717B35E5E4CDEE4563FBFAE53D47D" />
                                                            <input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/assinaturas/209x48-contratar-cinza-assina.gif"
                                                                name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                                                            </form>
                                                            <!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <h3>
                                                                Plano Bronze:</h3>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Classificação na busca: <b>Baixa</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Envio de E-mail Marketing por dia: <b>3.000</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Serviços Adicionais: <b>A definir...</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h5>
                                                                Valor: <b>89,90/por mês</b></h5>
                                                            <p class="help-block">
                                                                Valor válido<br />
                                                                para contrato de 12 meses
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
                                                            <form action="https://pagseguro.uol.com.br/v2/pre-approvals/request.html" method="post">
                                                            <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                                            <input type="hidden" name="code" value="C8A8803BCBCBB962246CEFA103691810" />
                                                            <input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/assinaturas/209x48-contratar-cinza-assina.gif"
                                                                name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                                                            </form>
                                                            <!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td width="8%">
                                            </td>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <br />
                                                            <h3>
                                                                Plano Bronze</h3>
                                                                <p class="help-block">Experimental 3 meses</p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Classificação na busca: <b>Baixa</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Envio de E-mail Marketing por dia: <b>3.000</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Serviços Adicionais: <b>A definir...</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h5>
                                                                Valor: <b>89,90/por mês</b></h5>
                                                            <p class="help-block">
                                                                Se o plano não for<br /> cancelado pelo usuário,<br />
                                                                será renovado<br /> automaticamente<br /> para 12 meses.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
                                                            <form action="https://pagseguro.uol.com.br/v2/pre-approvals/request.html" method="post">
                                                            <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                                            <input type="hidden" name="code" value="FEC83BCEDDDDE2C4443D6F8C207BDB1D" />
                                                            <input type="image" src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/assinaturas/209x48-contratar-cinza-assina.gif"
                                                                name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                                                            </form>
                                                            <!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <br />
                                <br />
                                <%--<button type="submit" class="btn btn-default">
                                    Enviar</button>
                                <button type="submit" class="btn btn-default">
                                    Cancelar</button>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
