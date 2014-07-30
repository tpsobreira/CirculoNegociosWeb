using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CirculoNegocios.Util;

namespace CirculoNegocios.Web
{
    public partial class AnuncieProv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Email objEmail = new Email();

            string emailBody = @"Dados do Novo Interessado:
                                <br> Nome: " + txtNome.Text + "<br> Telefone: " + txtTelefone.Text + " <br> Mensagem : " + txtMensagem.Text;

            if (chkBronze.Checked)
                emailBody = emailBody + "<br> Interessado no Plano Bronze.";

            if (chkPrata.Checked)
                emailBody = emailBody + "<br> Interessado no Plano Prata.";

            if (chkOuro.Checked)
                emailBody = emailBody + "<br> Interessado no Plano Ouro.";

            try
            {
                bool result = objEmail.SendEmail("comercial@circulodenegocios.com.br", txtEmail.Text, "Novo Cliente Interessado", emailBody);

                if (result)
                {
                    RestauraControles();
                    Alert("Contato Enviado com sucesso!");
                }
                else
                {
                    Alert("Ocorreu um erro ao enviar o contato, tente novamente mais tarde!");
                }
            }
            catch (Exception)
            {
                Alert("Ocorreu um erro ao enviar o contato, tente novamente mais tarde!");
            }


        }

        private void RestauraControles()
        {
            txtEmail.Text = string.Empty;
            txtMensagem.Text = string.Empty;
            txtNome.Text = string.Empty;
            txtTelefone.Text = string.Empty;

            chkBronze.Checked = false;
            chkOuro.Checked = false;
            chkPrata.Checked = false;
        }

        private void Alert(string mensagem)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "');", true);
        }
    }
}