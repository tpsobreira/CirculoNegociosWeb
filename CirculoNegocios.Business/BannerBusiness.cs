using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class BannerBusiness
    {
        BannerDAL lObjBannerDAL = new BannerDAL();

        public List<BannerEntity> ConsultaBannersAtivosByTipo(int idTipoBanner)
        {
            return lObjBannerDAL.ConsultaBannersAtivosByTipo(idTipoBanner);
        }
    }
}
