using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class OfertaBusiness
    {
        OfertaDAL lObjOfertaDAL = new OfertaDAL();

        public List<OfertaEntity> ConsultaOfertasAtivasByEstado(string estado)
        {
            return lObjOfertaDAL.ConsultaOfertasAtivasByEstado(estado);
        }
    }
}
