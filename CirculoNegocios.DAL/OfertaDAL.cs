using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class OfertaDAL
    {
        public List<OfertaEntity> ConsultaOfertasAtivasByEstado(string estado)
        {
            List<OfertaEntity> lstOfertas = new List<OfertaEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbOfertas
                               where p.dataDe <= DateTime.Now && p.dataAte >= DateTime.Now
                                                              && p.estado == estado
                               select p).ToList();

                    lstOfertas = CastListOfertas(ret);

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstOfertas;
        }

        private List<OfertaEntity> CastListOfertas(List<tbOferta> lstTbOfertas)
        {
            List<OfertaEntity> lstOfertas = new List<OfertaEntity>();

            foreach (var item in lstTbOfertas)
            {
                OfertaEntity oferta = new OfertaEntity();

                oferta.dataAte = item.dataAte;
                oferta.dataDe = item.dataDe;
                oferta.dataUltimaAlteracao = item.dataUltimaAlteracao;
                oferta.descricao = item.descricao;
                oferta.estado = item.estado;
                oferta.id = item.id;
                oferta.idCliente = item.idCliente;
                oferta.imagemFilePath = item.imagemFilePath;
                oferta.link = item.link;
                oferta.responsavelUltimaAlteracao = item.responsavelUltimaAlteracao;
                oferta.titulo = item.titulo;

                lstOfertas.Add(oferta);
            }

            return lstOfertas;
        }
    }
}
