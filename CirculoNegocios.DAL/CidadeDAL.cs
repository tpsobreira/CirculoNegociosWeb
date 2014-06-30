using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class CidadeDAL
    {
        public List<string> ListaCidadesByCategoria(int idCategoria)
        {
            List<string> lstCidades = new List<string>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    lstCidades = (from p in context.tbClientes
                                  where p.idCategoriaCliente == idCategoria
                                  select p.cidade).Distinct().ToList();
                }
            }
            catch (Exception)
            {

                throw;
            }

            return lstCidades;
        }


    }
}
