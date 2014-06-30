using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class BannerPrincipalBusiness
    {
        BannerPrincipalDAL lObjBannerPricipalDAL = new BannerPrincipalDAL();

        public List<BannerPrincipalEntity> ConsultaBannerPrincipalsAtivos(string estado)
        {
            return lObjBannerPricipalDAL.ConsultaBannerPrincipalsAtivos(estado);
        }
    }
}
