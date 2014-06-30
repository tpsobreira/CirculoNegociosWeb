using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class BannerPrincipalDAL
    {
        public List<BannerPrincipalEntity> ConsultaBannerPrincipalsAtivos(string estado)
        {
            List<BannerPrincipalEntity> lstBannerPrincipal = new List<BannerPrincipalEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbBannerPrincipals
                               where p.dataDe <= DateTime.Now
                                     && p.dataAte >= DateTime.Now
                                     && p.estado == estado
                                     && p.Ativo == true
                               select p).ToList();

                    lstBannerPrincipal = CastListBannerPrincipals(ret);

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstBannerPrincipal;
        }

        private List<BannerPrincipalEntity> CastListBannerPrincipals(List<tbBannerPrincipal> lstTbBannerPrincipal)
        {
            List<BannerPrincipalEntity> lstBannerPrincipals = new List<BannerPrincipalEntity>();

            int Enum = 0;

            foreach (var item in lstTbBannerPrincipal)
            {
                BannerPrincipalEntity obj = new BannerPrincipalEntity();

                obj.id = item.id;
                obj.Ativo = item.Ativo;
                obj.dataAte = item.dataAte;
                obj.dataDe = item.dataDe;
                obj.estado = item.estado;
                obj.idCliente = item.idCliente;
                obj.Descricao = item.Descricao;
                obj.Rodape1 = item.Rodape1;
                obj.Rodape2 = item.Rodape2;
                obj.imagemFilePath = item.imagemFilePath;

                obj.ClassCssCabecalho = "";
                obj.ClassCssItem = "item";
                obj.Enum = Enum;

                lstBannerPrincipals.Add(obj);

                Enum++;
            }

            return lstBannerPrincipals;
        }
    }
}
