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
        public List<NoticiaEntity> ConsultaNoticiasAtivosByCategoria(int idCategoria, string estado)
        {
            List<NoticiaEntity> lstNoticia = new List<NoticiaEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbNoticias
                               where p.idCategoria == idCategoria && p.dataHoraDe <= DateTime.Now
                                                                    && p.dataHoraAte >= DateTime.Now
                                                                    && p.estado == estado
                               orderby p.id descending
                               select p).ToList();

                    lstNoticia = CastListNoticias(ret);

                }
            }
            catch (Exception ex)
            {
                throw;
            }

            return lstNoticia;
        }

        public List<NoticiaEntity> ConsultaNoticiasByTexto(string textoConsulta, string estado)
        {
            List<NoticiaEntity> lstNoticia = new List<NoticiaEntity>();

            try
            {
                 using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbNoticias
                               where p.titulo.Contains(textoConsulta) && p.Sinopse.Contains(textoConsulta) && p.Descricao.Contains(textoConsulta)
                                                                      && p.dataHoraDe <= DateTime.Now
                                                                      && p.dataHoraAte >= DateTime.Now
                                                                      && p.estado == estado
                               orderby p.id descending
                               select p).Take(6).ToList();

                    lstNoticia = CastListNoticias(ret);

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstNoticia;
        }

        public NoticiaEntity ConsultaNoticiaById(int idNoticia)
        {
            NoticiaEntity noticia = new NoticiaEntity();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbNoticias
                               where p.id == idNoticia
                               select p).First();

                    noticia = CastNoticiaEntity(ret);
                }
            }
            catch (Exception)
            {
                throw;
            }

            return noticia;
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
                obj.imagemHome = item.imagemHome;
                obj.imagem1 = item.imagem1;
                obj.imagem2 = item.imagem2;
                obj.imagem3 = item.imagem3;

                lstNoticias.Add(obj);
            }

            return lstNoticias;
        }

        private NoticiaEntity CastNoticiaEntity(tbNoticia noticia)
        {
            NoticiaEntity obj = new NoticiaEntity();

            obj.id = noticia.id;
            obj.Ativo = noticia.Ativo;
            obj.dataHoraAte = noticia.dataHoraAte;
            obj.dataHoraDe = noticia.dataHoraDe;
            obj.estado = noticia.estado;
            obj.titulo = noticia.titulo;
            obj.Sinopse = noticia.Sinopse;
            obj.Descricao = noticia.Descricao;
            obj.imagemHome = noticia.imagemHome;
            obj.imagem1 = noticia.imagem1;
            obj.imagem2 = noticia.imagem2;
            obj.imagem3 = noticia.imagem3;

            return obj;
        }
    }
}
