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
    public partial class LerMais : System.Web.UI.Page
    {
        NoticiaBusiness noticiaBusiness = new NoticiaBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int idNoticia = Convert.ToInt32(Request.QueryString["id"].ToString());

                var noticia = noticiaBusiness.ConsultaNoticiaById(idNoticia);

                string descricao = noticia.Descricao.Replace("[Paragrafo", "<br />");

                litDescricaoNoticia.Text = noticia.Descricao;
                litTituloNoticia.Text = noticia.titulo;

                imgPrincipal.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + noticia.imagem1.ToString().Substring(noticia.imagem1.LastIndexOf("Noticias"), noticia.imagem1.ToString().Length - noticia.imagem1.ToString().LastIndexOf("Noticias"));

            }
        }

        private void CarregaNoticia()
        { 
            
        }
    }
}