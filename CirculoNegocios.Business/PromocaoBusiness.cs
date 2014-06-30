using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class PromocaoBusiness
    {
        PromocaoDAL lobjPromocaoDAL = new PromocaoDAL();

        public List<PromocaoEntity> ConsultaPromocaosAtivasByEstado(string estado)
        {
            return lobjPromocaoDAL.ConsultaPromocaosAtivasByEstado(estado);
        }
    }
}
