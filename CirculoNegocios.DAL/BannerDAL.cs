using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class BannerDAL
    {
        public List<BannerEntity> ConsultaBannersAtivosByTipo(int idTipoBanner)
        {
            List<BannerEntity> lstBanner = new List<BannerEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbBanners where p.idTipoBanner == idTipoBanner && p.dataDe <= DateTime.Now 
                                                                                                && p.dataAte >= DateTime.Now
                                                                                                select p).ToList();

                    lstBanner = CastListBanners(ret);
 
                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstBanner;
        }

        private List<BannerEntity> CastListBanners(List<tbBanner> lstTbBanner)
        {
            List<BannerEntity> lstBanners = new List<BannerEntity>();

            foreach (var item in lstTbBanner)
            {
                BannerEntity obj = new BannerEntity();

                obj.id = item.id;
                obj.Ativo = item.Ativo;
                obj.dataAte = item.dataAte;
                obj.dataDe = item.dataDe;
                obj.estado = item.estado;
                obj.idCliente = item.idCliente;
                obj.idTipoBanner = item.idTipoBanner;
                obj.imagemFilePath = item.imagemFilePath;

                lstBanners.Add(obj);
            }

            return lstBanners;
        }
    }
}
