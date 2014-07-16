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

        public List<NoticiaEntity> ConsultaNoticiasAtivosByCategoria(int idCategoria, string estado)
        {
            return lObjNoticiaDAL.ConsultaNoticiasAtivosByCategoria(idCategoria, estado);
        }

        public List<NoticiaEntity> ConsultaNoticiasByTexto(string textoConsulta, string estado)
        {
            return lObjNoticiaDAL.ConsultaNoticiasByTexto(textoConsulta, estado);
        }

        public NoticiaEntity ConsultaNoticiaById(int idNoticia)
        {
            return lObjNoticiaDAL.ConsultaNoticiaById(idNoticia);
        }
    }
}
