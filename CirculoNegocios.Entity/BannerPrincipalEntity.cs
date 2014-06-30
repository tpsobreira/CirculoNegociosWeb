using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;

namespace CirculoNegocios.Entity
{
    public class BannerPrincipalEntity : tbBannerPrincipal
    {
        public string nomeCliente { get; set; }
        public string ClassCssItem { get; set; }
        public string ClassCssCabecalho { get; set; }
        public int Enum { get; set; }
    }
}
