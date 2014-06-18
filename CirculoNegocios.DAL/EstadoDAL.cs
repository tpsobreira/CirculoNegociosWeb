using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.Entity;
using CirculoNegocios.DB;

namespace CirculoNegocios.DAL
{
    public class EstadoDAL
    {
        public List<EstadoEntity> ConsultaTodosEstados()
        {
            List<EstadoEntity> lstEstado = new List<EstadoEntity>();

            using (var context = new CirculoNegocioEntities())
            {
                var ret = (from p in context.tbEstados
                           select p).ToList();

                lstEstado = CastListEstadoEntity(ret);
            }

            return lstEstado;
        }

        private List<EstadoEntity> CastListEstadoEntity(List<tbEstado> tbEstado)
        {
            List<EstadoEntity> lstEstado = new List<EstadoEntity>();

            foreach (var item in tbEstado)
            {
                EstadoEntity objEstado = new EstadoEntity();
                objEstado.sigla = item.sigla;
                objEstado.nome = item.nome;

                lstEstado.Add(objEstado);
            }

            return lstEstado;
        }
    }
}
