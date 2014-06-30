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
    public partial class Categorias : System.Web.UI.Page
    {

        CategoriaClienteBusiness categoriaBusiness = new CategoriaClienteBusiness();
        SubCategoriaClienteBusiness subCategoriaBusiness = new SubCategoriaClienteBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PreencheRepeaterCategorias();
            }
        }

        private void PreencheRepeaterCategorias()
        {
            rptCategorias.DataSource = categoriaBusiness.ConsultaTodasCategoriasCliente();
            rptCategorias.DataBind();

            foreach (RepeaterItem item in rptCategorias.Items)
            {
                Repeater rptSubCategorias = (Repeater)item.FindControl("rptSubCategorias");
                Label lblId = (Label)item.FindControl("lblId");

                rptSubCategorias.DataSource = subCategoriaBusiness.ConsultaSubCategoriasClientebyCategoriaPai(Convert.ToInt32(lblId.Text));
                rptSubCategorias.DataBind();
            }
        }
    }
}