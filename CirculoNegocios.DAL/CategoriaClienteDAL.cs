using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class CategoriaClienteDAL
    {
        public List<CategoriaClienteEntity> ConsultaTodasCategoriasCliente()
        {
            List<CategoriaClienteEntity> lstCategoriasClientes = new List<CategoriaClienteEntity>();

            using (var context = new CirculoNegocioEntities())
            {
                var ret = (from p in context.tbCategoriaClientes
                           select p).ToList();

                lstCategoriasClientes = CastListCategoriasClienteEntity(ret);
            }

            return lstCategoriasClientes;
        }

        private List<CategoriaClienteEntity> CastListCategoriasClienteEntity(List<tbCategoriaCliente> tbCategoriaCliente)
        {
            List<CategoriaClienteEntity> lst = new List<CategoriaClienteEntity>();

            foreach (var categoriaCliente in tbCategoriaCliente)
            {
                CategoriaClienteEntity categoria = new CategoriaClienteEntity();

                categoria.DataUltimaAlteracao = categoriaCliente.DataUltimaAlteracao;
                categoria.id = categoriaCliente.id;
                categoria.Nome = categoriaCliente.Nome;
                categoria.responsavelUltimaAlteracao = categoriaCliente.responsavelUltimaAlteracao;

                lst.Add(categoria);

            }

            return lst;
        }
    }
}
