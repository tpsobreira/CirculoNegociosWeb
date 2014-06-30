using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class PromocaoDAL
    {
        public List<PromocaoEntity> ConsultaPromocaosAtivasByEstado(string estado)
        {
            List<PromocaoEntity> lstPromocaos = new List<PromocaoEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbPromocaos
                               where p.dataDe <= DateTime.Now && p.dataAte >= DateTime.Now
                                                              && p.estado == estado
                               select p).ToList();

                    lstPromocaos = CastListPromocaos(ret);

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstPromocaos;
        }

        public List<PromocaoEntity> CastListPromocaos(List<tbPromocao> lstTbPromocoes)
        {
            List<PromocaoEntity> lstPromocoes = new List<PromocaoEntity>();

            foreach (var item in lstTbPromocoes)
            {
                PromocaoEntity promocao = new PromocaoEntity();

                promocao.dataAte = item.dataAte;
                promocao.dataDe = item.dataDe;
                promocao.dataUltimaAlteracao = item.dataUltimaAlteracao;
                promocao.estado = item.estado;
                promocao.id = item.id;
                promocao.idCliente = item.idCliente;
                promocao.imagemFilePath = item.imagemFilePath;
                promocao.link = item.link;
                promocao.responsavelUltimaAlteracao = item.responsavelUltimaAlteracao;
                promocao.titulo = item.titulo;

                lstPromocoes.Add(promocao);
            }

            return lstPromocoes;
        }
    }
}
