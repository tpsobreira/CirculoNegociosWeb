<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="AnuncieProv.aspx.cs" Inherits="CirculoNegocios.Web.AnuncieProv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 column">
        <div class="jumbotron bgg">
            <h1>
                Anuncie conosco</h1>
        </div>
        <div class="tab-content">
            <table>
                <tr>
                    <td>
                        <h4>Preencha os Dados abaixo e escolha um plano, nosso consultor de vendas da sua região
                        vai entrar em contato o mais breve possível.</h4><br />
                        <br />
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        Nome:
                    </td>
                    <td>
                        Telefone de Contato com DDD:
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail:
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Mensagem:
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtMensagem" TextMode="MultiLine" runat="server" Width="600px" Height="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <h3>
                                        <asp:CheckBox ID="chkOuro" runat="server" />Plano Ouro:</h3>
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
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <h3>
                                        <asp:CheckBox ID="chkPrata" runat="server" />Plano Prata:</h3>
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
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <h3>
                                        <asp:CheckBox ID="chkBronze" runat="server" />Plano Bronze:</h3>
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
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    <br />
                    <br />
                        <asp:Button ID="btnEnviar" runat="server" CssClass="btn btn-default" Text="Enviar Solicitação" 
                            onclick="btnEnviar_Click" />    
                    </td>

                    
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
