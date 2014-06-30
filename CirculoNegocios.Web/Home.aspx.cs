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
using System.Configuration;

namespace CirculoNegocios.Web
{
    public partial class Home : System.Web.UI.Page
    {
        BannerBusiness bannerBusiness = new BannerBusiness();
        BannerPrincipalBusiness bannerPrincipalBusiness = new BannerPrincipalBusiness();
        NoticiaBusiness noticiaBusiness = new NoticiaBusiness();
        OfertaBusiness ofertaBusiness = new OfertaBusiness();
        PromocaoBusiness promocaoBusiness = new PromocaoBusiness();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                #region ### Define Estado Pela localização do Usuario

                if (ConfigurationManager.AppSettings["Chave"].ToString() == "Prod")
                    LocalizacaoGeografica(Context.Request.UserHostAddress.ToString());
                else
                    Session["UF"] = "SP";

                #endregion

                CarregaBanners();
                CarregaNoticias();
                CarregaPromocoes();
                CarregaBannerPrincipal();
                
                
            }
        }

        private void CarregaBanners()
        {
            /*Tipo Banner 2 = Banner Lateral Esquerda*/
            rptBannerLateralEsquerda.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(2, Session["UF"].ToString());
            rptBannerLateralEsquerda.DataBind();

            rptBannerInferiorEsquerdo.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(3, Session["UF"].ToString());
            rptBannerInferiorEsquerdo.DataBind();
        }

        private void CarregaBannerPrincipal()
        {
            var banners = bannerPrincipalBusiness.ConsultaBannerPrincipalsAtivos(Session["UF"].ToString());
            banners[0].ClassCssCabecalho = "active";
            banners[0].ClassCssItem = "item active";

            rptCabecalhoBannerPrincipal.DataSource = banners;
            rptCabecalhoBannerPrincipal.DataBind();

            rptBannerPrincipal.DataSource = banners;
            rptBannerPrincipal.DataBind();
        }

        private void CarregaPromocoes()
        {
            rptPromocoes.DataSource = promocaoBusiness.ConsultaPromocaosAtivasByEstado(Session["UF"].ToString());
            rptPromocoes.DataBind();
        }

        private void CarregaNoticias()
        {
            var Noticia = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(4, Session["UF"].ToString());
            litTituloNoticiaLateralEsquerda.Text = Noticia[0].titulo;
            litSinopseNoticiaLateralEsquerda.Text = Noticia[0].Sinopse;
        }

        private void CarregaOfertas()
        {
            rptOfertas.DataSource = ofertaBusiness.ConsultaOfertasAtivasByEstado(Session["UF"].ToString());
            rptOfertas.DataBind();
        }

        protected void btnBuscarNoticiasMais_Click(object sender, EventArgs e)
        {

        }

        private void LocalizacaoGeografica(string ip)
        {
            const string KEY = "43231b165801ed79016c83377ce74bb3ee6029f9dac866fb45edd366e7ae495b";
            string sIP = ip; //Endereço IP
            string sFormat = "xml"; //Formato de retorno pode ser: raw, xml, json
            //URL + CHAVE + IP + FORMATO
            string sUrl = "http://api.ipinfodb.com/v3/ip-city/?key=" + KEY + "&ip=" + sIP + "&format=" + sFormat;

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(sUrl);
            //request.Proxy = GlobalProxySelection.GetEmptyWebProxy();
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream stream = response.GetResponseStream();
            XmlDocument xml = new XmlDocument();
            xml.Load(stream); //Carregando o arquivo


            XmlNode nodeRoot = xml.DocumentElement;
            foreach (XmlNode xn in nodeRoot)
            {
                //litStatusCode.Text = xn.ParentNode["statusCode"].InnerText;
                //litStatusMessage.Text = xn.ParentNode["statusMessage"].InnerText;
                //litIpAddress.Text = xn.ParentNode["ipAddress"].InnerText;
                //litCountryCode.Text = xn.ParentNode["countryCode"].InnerText;
                //litCountryName.Text = xn.ParentNode["countryName"].InnerText;
                string Estado = xn.ParentNode["regionName"].InnerText;
                //litCityName.Text = xn.ParentNode["cityName"].InnerText;
                //litZipCode.Text = xn.ParentNode["zipCode"].InnerText;
                //litLatitude.Text = xn.ParentNode["latitude"].InnerText;
                //litLongitude.Text = xn.ParentNode["longitude"].InnerText;
                //litTimeZone.Text = xn.ParentNode["timeZone"].InnerText;



                switch (Estado)
                {
                    case "SAO PAULO":
                        Session["UF"] = "SP";
                        break;
                    case "RIO DE JANEIRO":
                        Session["UF"] = "RJ";
                        break;
                    case "MINAS GERAIS":
                        Session["UF"] = "MG";
                        break;

                }

            }
        }

    }
}