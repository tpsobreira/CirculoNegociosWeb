using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{    
    public class NoticiaBusiness
    {
        NoticiaDAL lObjNoticiaDAL = new NoticiaDAL();

        public List<NoticiaEntity> ConsultaNoticiasAtivosByCategoria(int idCategoria)
        {
            return lObjNoticiaDAL.ConsultaNoticiasAtivosByCategoria(idCategoria);
        }
    }
}
