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
    public partial class Busca : System.Web.UI.Page
    {
        ClienteBusiness clienteBusiness = new ClienteBusiness();
        BuscaBusiness buscaBusiness = new BuscaBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void PreencheBreadCrumb(int idCategoria, string nomeCategoria, string Estado)
        {
            litEstadoBusca.Text = Estado;
            litCategoriaBusca.Text = nomeCategoria;

            ddlCidadeFiltro.DataSource = buscaBusiness.ListaCidadesByCategoria(idCategoria);
            ddlCidadeFiltro.DataBind();
            ddlCidadeFiltro.Items.Insert(0, "Filtre aqui por cidade...");

            ddlSubCategoriaFiltro.DataSource = new SubCategoriaClienteBusiness().ConsultaSubCategoriasClientebyCategoriaPai(idCategoria);
            ddlSubCategoriaFiltro.DataValueField = "id";
            ddlSubCategoriaFiltro.DataTextField = "Nome";
            ddlSubCategoriaFiltro.DataBind();
            ddlSubCategoriaFiltro.Items.Insert(0, "Filtre aqui por Sub-Categoria...");
        }

        public int PaginaAtual //Propriedade da página atual, colocada no viewstate
        {
            get
            {
                object o = this.ViewState["PaginaAtual"];
                if (o == null || (int)o < 0)
                {
                    return 0;
                }
                else
                {
                    return (int)o;
                }
            }
            set
            {
                this.ViewState["PaginaAtual"] = value;
            }
        }

        public void GetData()
        {
            IList<ClienteEntity> lstClintes = new List<ClienteEntity>();

            string estado = Request.QueryString["uf"].ToString();
            string textoBusca = Request.QueryString["txt"].ToString();
            int idSubCategoria = Convert.ToInt32(Request.QueryString["idSub"].ToString());

            if (!string.IsNullOrEmpty(textoBusca))
                lstClintes = clienteBusiness.ConsultaClientesByTextoBusca(estado, textoBusca);
            else
                lstClintes = clienteBusiness.ConsultaClientesBySubCategoria(idSubCategoria, estado);
            
            PagedDataSource Pgs = new PagedDataSource();
            Pgs.AllowPaging = true; //Seta paginação no PagedDataSource
            Pgs.DataSource = lstClintes; // No caso, está setando como datasource o um objeto mas pode ser por exemplo, um DataSet.
            Pgs.PageSize = 10; //Número de registros por página
            
            if (PaginaAtual >= Pgs.PageCount)
                PaginaAtual--;
            else if (PaginaAtual < 0)
                PaginaAtual++;
            else
            {
                Pgs.CurrentPageIndex = PaginaAtual;
                rptResultado.DataSource = Pgs;
                rptResultado.DataBind();

                PreencheBreadCrumb(Convert.ToInt32(lstClintes[0].idCategoriaCliente), lstClintes[0].nomeCategoria, lstClintes[0].estado);
            }
        }

        protected void lnkProximo_Click(object sender, EventArgs e)
        {
            PaginaAtual++;
            GetData();
        }

        protected void lnkAnterior_Click(object sender, EventArgs e)
        {
            PaginaAtual--;
            GetData();
        }
    }
}