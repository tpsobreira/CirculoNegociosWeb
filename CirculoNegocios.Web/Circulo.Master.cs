using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CirculoNegocios.Business;
using System.Net;
using System.IO;
using System.Xml;


namespace CirculoNegocios.Web
{
    public partial class Circulo : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                PreencheCombos();

                ddlEstado.SelectedValue = Session["UF"].ToString();
            }
        }

        private void PreencheCombos()
        {
            ddlEstado.DataSource = new EstadoBusiness().ConsultaTodosEstados();
            ddlEstado.DataValueField = "sigla";
            ddlEstado.DataTextField = "nome";
            ddlEstado.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("Busca.aspx?txt={0}&uf={1}", txtBuscaServicos.Text, ddlEstado.SelectedValue));
        }

        
    }
}