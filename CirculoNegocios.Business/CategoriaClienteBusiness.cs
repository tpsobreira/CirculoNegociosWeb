using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class CategoriaClienteBusiness
    {
        CategoriaClienteDAL lObjCategoriaCliente = new CategoriaClienteDAL();

        public List<CategoriaClienteEntity> ConsultaTodasCategoriasCliente()
        {
            return lObjCategoriaCliente.ConsultaTodasCategoriasCliente();
        }
    }
}
