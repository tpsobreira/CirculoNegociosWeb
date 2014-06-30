using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.Entity;
using CirculoNegocios.DB;

namespace CirculoNegocios.DAL
{
    public class SubCategoriaClienteDAL
    {
        public List<SubCategoriaClienteEntity> ConsultaSubCategoriasClientebyCategoriaPai(int idCategoriaPai)
        {
            List<SubCategoriaClienteEntity> lstSubCategoriasClientes = new List<SubCategoriaClienteEntity>();

            using (var context = new CirculoNegocioEntities())
            {
                var ret = (from p in context.tbSubCategoriaClientes
                           where p.idCategoria == idCategoriaPai
                           select p).ToList();

                lstSubCategoriasClientes = CastListSubCategoriasClienteEntity(ret);
            }

            return lstSubCategoriasClientes;
        }

        private List<SubCategoriaClienteEntity> CastListSubCategoriasClienteEntity(List<tbSubCategoriaCliente> tbSubCategoriaCliente)
        {
            List<SubCategoriaClienteEntity> lst = new List<SubCategoriaClienteEntity>();

            foreach (var categoriaCliente in tbSubCategoriaCliente)
            {
                SubCategoriaClienteEntity categoria = new SubCategoriaClienteEntity();

                categoria.DataUltimaAlteracao = categoriaCliente.DataUltimaAlteracao;
                categoria.id = categoriaCliente.id;
                categoria.idCategoria = categoriaCliente.idCategoria;
                categoria.Nome = categoriaCliente.Nome;
                categoria.responsavelUltimaAlteracao = categoriaCliente.responsavelUltimaAlteracao;

                lst.Add(categoria);

            }

            return lst;
        }
    }
}