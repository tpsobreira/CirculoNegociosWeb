using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class SubCategoriaClienteBusiness
    {
        SubCategoriaClienteDAL lObjSubCategoriaDAL = new SubCategoriaClienteDAL();

        public List<SubCategoriaClienteEntity> ConsultaSubCategoriasClientebyCategoriaPai(int idCategoriaPai)
        {
            return lObjSubCategoriaDAL.ConsultaSubCategoriasClientebyCategoriaPai(idCategoriaPai);
        }
    }
}
