using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class BuscaBusiness
    {
        CidadeDAL lObjCidade = new CidadeDAL();

        public List<string> ListaCidadesByCategoria(int idCategoria)
        {
            return lObjCidade.ListaCidadesByCategoria(idCategoria);    
        }
    }
}
