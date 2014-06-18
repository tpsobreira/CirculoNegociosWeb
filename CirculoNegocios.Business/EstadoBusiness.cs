using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.Entity;
using CirculoNegocios.DAL;

namespace CirculoNegocios.Business
{
    public class EstadoBusiness
    {
        EstadoDAL lObjEstadoDAL = new EstadoDAL();

        public List<EstadoEntity> ConsultaTodosEstados()
        {
            return lObjEstadoDAL.ConsultaTodosEstados();    
        }
    }
}
