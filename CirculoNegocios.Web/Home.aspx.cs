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
using CirculoNegocios.Entity;

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
                CarregaOfertas();


            }
        }

        private void CarregaBanners()
        {
            /*Tipo Banner 2 = Banner Lateral Esquerda*/
            rptBannerLateralEsquerda.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(2, Session["UF"].ToString());
            rptBannerLateralEsquerda.DataBind();

            rptBannerInferiorEsquerdo.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(3, Session["UF"].ToString());
            rptBannerInferiorEsquerdo.DataBind();

            rptBannerLateralDireita.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(5, Session["UF"].ToString());
            rptBannerLateralDireita.DataBind();

            rptBannerInferiorDireita.DataSource = bannerBusiness.ConsultaBannersAtivosByTipo(6, Session["UF"].ToString());
            rptBannerInferiorDireita.DataBind();

            var BannerCentral = bannerBusiness.ConsultaBannersAtivosByTipo(4, Session["UF"].ToString());


            if (BannerCentral.Count > 0)
            {
                imgBannerCentral.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + BannerCentral[0].imagemFilePath.Substring(BannerCentral[0].imagemFilePath.LastIndexOf("Banners"), BannerCentral[0].imagemFilePath.Length - BannerCentral[0].imagemFilePath.LastIndexOf("Banners"));
            }

        }

        private void CarregaBannerPrincipal()
        {
            var banners = bannerPrincipalBusiness.ConsultaBannerPrincipalsAtivos(Session["UF"].ToString());

            if (banners.Count > 0)
            {
                banners[0].ClassCssCabecalho = "active";
                banners[0].ClassCssItem = "item active";

                rptCabecalhoBannerPrincipal.DataSource = banners;
                rptCabecalhoBannerPrincipal.DataBind();

                rptBannerPrincipal.DataSource = banners;
                rptBannerPrincipal.DataBind();
            }

        }

        private void CarregaPromocoes()
        {
            rptPromocoes.DataSource = promocaoBusiness.ConsultaPromocaosAtivasByEstado(Session["UF"].ToString());
            rptPromocoes.DataBind();
        }

        private void CarregaNoticias()
        {
            var NoticiaLateralEsq = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(4, Session["UF"].ToString());

            var NoticiaLateralDireita = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(15, Session["UF"].ToString());

            var NoticiaDestaqueCentralDireita = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(7, Session["UF"].ToString());

            var NoticiaCentralEsq1 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(8, Session["UF"].ToString());
            var NoticiaCentralEsq2 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(9, Session["UF"].ToString());
            var NoticiaCentralEsq3 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(10, Session["UF"].ToString());

            var NoticiaCentralDireita1 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(11, Session["UF"].ToString());
            var NoticiaCentralDireita2 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(12, Session["UF"].ToString());
            var NoticiaCentralDireita3 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(13, Session["UF"].ToString());
            var NoticiaCentralDireita4 = noticiaBusiness.ConsultaNoticiasAtivosByCategoria(14, Session["UF"].ToString());

            List<NoticiaEntity> MaisProcuradas = new List<NoticiaEntity>();

            if (NoticiaLateralEsq.Count > 0)
            {
                litTituloNoticiaLateralEsquerda.Text = NoticiaLateralEsq[0].titulo;
                litSinopseNoticiaLateralEsquerda.Text = NoticiaLateralEsq[0].Sinopse;
                lnkLeiaMaisNoticiaLateralEsquerda.Visible = true;

                lnkLeiaMaisNoticiaLateralEsquerda.CommandArgument = NoticiaLateralEsq[0].id.ToString();

                MaisProcuradas.Add(NoticiaLateralEsq[0]);
            }

            if (NoticiaLateralDireita.Count > 0)
            {
                litSinopseNoticiaLateralDireita.Text = NoticiaLateralDireita[0].Sinopse;
                litTituloNoticiaLateralDireita.Text = NoticiaLateralDireita[0].titulo;
                lnkLerMaisNoticiaLateralDireita.Visible = true;

                lnkLerMaisNoticiaLateralDireita.CommandArgument = NoticiaLateralDireita[0].id.ToString();

                MaisProcuradas.Add(NoticiaLateralDireita[0]);
            }

            if (NoticiaDestaqueCentralDireita.Count > 0)
            {
                litSinopseNoticiaDestaqueDireita.Text = NoticiaDestaqueCentralDireita[0].Sinopse;
                litTituloNoticiaDestaqueDireita.Text = NoticiaDestaqueCentralDireita[0].titulo;
                lnkLeiaMaisNoticiaDestaqueDireita.Visible = true;

                lnkLeiaMaisNoticiaDestaqueDireita.CommandArgument = NoticiaDestaqueCentralDireita[0].id.ToString();

                MaisProcuradas.Add(NoticiaDestaqueCentralDireita[0]);

            }

            if (NoticiaCentralEsq1.Count > 0)
            {
                ImgNoticiaCentralEsquerda1.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralEsq1[0].imagemHome.ToString().Substring(NoticiaCentralEsq1[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralEsq1[0].imagemHome.ToString().Length - NoticiaCentralEsq1[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentraEsquerda1.Text = NoticiaCentralEsq1[0].Sinopse;
                litTituloNoticiaCentraEsquerda1.Text = NoticiaCentralEsq1[0].titulo;

                lnkNoticiaCentralEsquerda1.CommandArgument = NoticiaCentralEsq1[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralEsq1[0]);
            }

            if (NoticiaCentralEsq2.Count > 0)
            {
                ImgNoticiaCentralEsquerda2.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralEsq2[0].imagemHome.ToString().Substring(NoticiaCentralEsq2[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralEsq2[0].imagemHome.ToString().Length - NoticiaCentralEsq2[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentraEsquerda2.Text = NoticiaCentralEsq2[0].Sinopse;
                litTituloNoticiaCentraEsquerda2.Text = NoticiaCentralEsq2[0].titulo;

                lnkNoticiaCentralEsquerda2.CommandArgument = NoticiaCentralEsq2[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralEsq2[0]);
            }

            if (NoticiaCentralEsq3.Count > 0)
            {
                ImgNoticiaCentralEsquerda3.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralEsq3[0].imagemHome.ToString().Substring(NoticiaCentralEsq3[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralEsq3[0].imagemHome.ToString().Length - NoticiaCentralEsq3[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentraEsquerda3.Text = NoticiaCentralEsq3[0].Sinopse;
                litTituloNoticiaCentraEsquerda3.Text = NoticiaCentralEsq3[0].titulo;

                lnkNoticiaCentralEsquerda3.CommandArgument = NoticiaCentralEsq3[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralEsq3[0]);
            }

            if (NoticiaCentralDireita1.Count > 0)
            {
                imgNoticiaCentralDireita1.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralDireita1[0].imagemHome.ToString().Substring(NoticiaCentralDireita1[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralDireita1[0].imagemHome.ToString().Length - NoticiaCentralDireita1[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentralDireita1.Text = NoticiaCentralDireita1[0].Sinopse;
                litTituloNoticiaCentralDireita1.Text = NoticiaCentralDireita1[0].titulo;

                lnkNoticiaCentralDireita1.CommandArgument = NoticiaCentralDireita1[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralDireita1[0]);
            }

            if (NoticiaCentralDireita2.Count > 0)
            {
                imgNoticiaCentralDireita2.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralDireita2[0].imagemHome.ToString().Substring(NoticiaCentralDireita2[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralDireita2[0].imagemHome.ToString().Length - NoticiaCentralDireita2[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentralDireita2.Text = NoticiaCentralDireita2[0].Sinopse;
                litTituloNoticiaCentralDireita2.Text = NoticiaCentralDireita2[0].titulo;

                lnkNoticiaCentralDireita2.CommandArgument = NoticiaCentralDireita2[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralDireita2[0]);
            }

            if (NoticiaCentralDireita3.Count > 0)
            {
                imgNoticiaCentralDireita3.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralDireita3[0].imagemHome.ToString().Substring(NoticiaCentralDireita3[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralDireita3[0].imagemHome.ToString().Length - NoticiaCentralDireita3[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentralDireita3.Text = NoticiaCentralDireita3[0].Sinopse;
                litTituloNoticiaCentralDireita3.Text = NoticiaCentralDireita3[0].titulo;

                lnkNoticiaCentralDireita3.CommandArgument = NoticiaCentralDireita3[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralDireita3[0]);
            }

            if (NoticiaCentralDireita4.Count > 0)
            {
                imgNoticiaCentralDireita4.ImageUrl = System.Configuration.ConfigurationManager.AppSettings["NavigateUrlImagens"].ToString() + NoticiaCentralDireita4[0].imagemHome.ToString().Substring(NoticiaCentralDireita4[0].imagemHome.LastIndexOf("HomeNoticia"), NoticiaCentralDireita4[0].imagemHome.ToString().Length - NoticiaCentralDireita4[0].imagemHome.ToString().LastIndexOf("HomeNoticia"));
                litSinopseNoticiaCentralDireita4.Text = NoticiaCentralDireita4[0].Sinopse;
                litTituloNoticiaCentralDireita4.Text = NoticiaCentralDireita4[0].titulo;

                lnkNoticiaCentralDireita4.CommandArgument = NoticiaCentralDireita4[0].id.ToString();

                MaisProcuradas.Add(NoticiaCentralDireita4[0]);
            }

            var noticiasMais = (from p in MaisProcuradas
                                select p).Take(6);

            rptNoticiasMaisProcuradas.DataSource = noticiasMais;
            rptNoticiasMaisProcuradas.DataBind();

        }

        private void CarregaOfertas()
        {
            rptOfertas.DataSource = ofertaBusiness.ConsultaOfertasAtivasByEstado(Session["UF"].ToString());
            rptOfertas.DataBind();
        }

        protected void btnBuscarNoticiasMais_Click(object sender, EventArgs e)
        {
            rptNoticiasMaisProcuradas.DataSource = noticiaBusiness.ConsultaNoticiasByTexto(txtBuscaNoticiasMais.Text, Session["UF"].ToString());
            rptNoticiasMaisProcuradas.DataBind();

            txtBuscaNoticiasMais.Text = string.Empty;
        }

        protected void lnkNoticiaCentralDireita1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralDireita1.CommandArgument);
        }

        protected void lnkNoticiaCentralDireita2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralDireita2.CommandArgument);
        }

        protected void lnkNoticiaCentralDireita3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralDireita3.CommandArgument);
        }

        protected void lnkNoticiaCentralDireita4_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralDireita4.CommandArgument);
        }

        protected void lnkLeiaMaisNoticiaLateralEsquerda_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkLeiaMaisNoticiaLateralEsquerda.CommandArgument);
        }

        protected void lnkLeiaMaisNoticiaDestaqueDireita_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkLeiaMaisNoticiaDestaqueDireita.CommandArgument);
        }

        protected void lnkLerMaisNoticiaLateralDireita_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkLerMaisNoticiaLateralDireita.CommandArgument);
        }

        protected void lnkNoticiaCentralEsquerda1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralEsquerda1.CommandArgument);
        }

        protected void lnkNoticiaCentralEsquerda2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralEsquerda2.CommandArgument);
        }

        protected void lnkNoticiaCentralEsquerda3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LerMais.aspx?id=" + lnkNoticiaCentralEsquerda3.CommandArgument);
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
                    default:
                        Session["UF"] = "SP";
                        break;

                }

            }
        }

    }
}