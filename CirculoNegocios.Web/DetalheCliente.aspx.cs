using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CirculoNegocios.Business;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Web
{
    public partial class DetalheCliente : System.Web.UI.Page
    {
        ClienteBusiness clienteBusiness = new ClienteBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int idCliente = Convert.ToInt32(Request.QueryString["idCliente"].ToString());

                var cliente = clienteBusiness.ConsultaClienteById(idCliente);

                litCep.Text = cliente.cep;
                litEmail.Text = cliente.email;
                litEndereco.Text = cliente.endereco;
                litHoraFimFds.Text = cliente.horaFdsAte;
                litHoraFimSemana.Text = cliente.horaSemanaAte;
                litHoraInicioFds.Text = cliente.horaFdsDe;
                litHoraInicioSemana.Text = cliente.horaSemanaDe;
                litNomeCliente.Text = cliente.nome;
                litNomeEmpresa.Text = cliente.nomeFantasia;
                litQuemSomos.Text = cliente.observacoes;
                litSubTitulo.Text = "";
                litTelefone.Text = cliente.telefone1 + " | " + cliente.telefone2;

                string[] servicos = cliente.servicos.Split(';');
                rptServicos.DataSource = servicos;
                rptServicos.DataBind();

                //imgCliente.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + DataBinder.Eval(Container.DataItem, "imagemFilePath").ToString().Substring(DataBinder.Eval(Container.DataItem, "imagemFilePath").ToString().LastIndexOf("BannerPrincipal"), DataBinder.Eval(Container.DataItem, "imagemFilePath").ToString().Length - DataBinder.Eval(Container.DataItem, "imagemFilePath").ToString().LastIndexOf("BannerPrincipal"));
                

            }
        }
    }
}