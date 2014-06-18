using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;


namespace CirculoNegocios.Entity
{
    public class ClienteEntity : tbCliente
    {
        public string nomeCategoria { get; set; }
    }
}
