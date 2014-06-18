using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CirculoNegocios.Business;

namespace CirculoNegocios.Web
{
    public partial class Home : System.Web.UI.Page
    {
        BannerBusiness bannerBusiness = new BannerBusiness();
        NoticiaBusiness noticiaBusiness = new NoticiaBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaBanners();
                CarregaNoticias();
                
            }
        }

        private void CarregaBanners()
        {
            /*Tipo Banner 2 = Banner Lateral Esquerda*/
            rptBannerLateralEsquerda.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(2);
            rptBannerLateralEsquerda.DataBind();

            rptBannerInferiorEsquerdo.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(3);
            rptBannerInferiorEsquerdo.DataBind();
        }

        public void CarregaNoticias()
        {
            var Noticia = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(4);
            litTituloNoticiaLateralEsquerda.Text = Noticia[0].titulo;
            litSinopseNoticiaLateralEsquerda.Text = Noticia[0].Sinopse;
        }

        protected void btnBuscarNoticiasMais_Click(object sender, EventArgs e)
        {

        }

    }
}