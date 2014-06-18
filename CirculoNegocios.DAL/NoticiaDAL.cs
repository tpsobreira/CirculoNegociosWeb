using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class NoticiaDAL
    {
        public List<NoticiaEntity> ConsultaNoticiasAtivosByCategoria(int idCategoria)
        {
            List<NoticiaEntity> lstNoticia = new List<NoticiaEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbNoticias
                               where p.idCategoria == idCategoria && p.dataHoraDe <= DateTime.Now
                                                                    && p.dataHoraAte >= DateTime.Now
                               select p).ToList();

                    lstNoticia = CastListNoticias(ret);

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstNoticia;
        }

        private List<NoticiaEntity> CastListNoticias(List<tbNoticia> lstTbNoticia)
        {
            List<NoticiaEntity> lstNoticias = new List<NoticiaEntity>();

            foreach (var item in lstTbNoticia)
            {
                NoticiaEntity obj = new NoticiaEntity();

                obj.id = item.id;
                obj.Ativo = item.Ativo;
                obj.dataHoraAte = item.dataHoraAte;
                obj.dataHoraDe = item.dataHoraDe;
                obj.estado = item.estado;
                obj.titulo = item.titulo;
                obj.Sinopse = item.Sinopse;
                obj.Descricao = item.Descricao;

                lstNoticias.Add(obj);
            }

            return lstNoticias;
        }
    }
}
