﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DAL;
using CirculoNegocios.Entity;

namespace CirculoNegocios.Business
{
    public class ClienteBusiness
    {
        ClienteDAL lObjClienteDAL = new ClienteDAL();

        public List<ClienteEntity> ConsultaClientesByTextoBusca(string estado, string texto)
        {
            return lObjClienteDAL.ConsultaClientesByTextoBusca(estado, texto);
        }
    }
}
