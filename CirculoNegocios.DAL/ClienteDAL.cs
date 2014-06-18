using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CirculoNegocios.DB;
using CirculoNegocios.Entity;

namespace CirculoNegocios.DAL
{
    public class ClienteDAL
    {
        public List<ClienteEntity> ConsultaClientesByTextoBusca(string estado, string texto)
        {
            List<ClienteEntity> lstClientesBusca = new List<ClienteEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {

                    var ret = (from c in context.tbClientes
                               join ca in context.tbCategoriaClientes on c.idCategoriaCliente equals ca.id
                               join sca in context.tbSubCategoriaClientes on c.idSubCategoriaCliente equals sca.id
                               where (c.estado == estado) && (c.nome.Contains(texto) || ca.Nome.Contains(texto) || sca.Nome.Contains(texto))
                               select new ClienteEntity
                               {
                                   anexoImagem1Path = c.anexoImagem1Path,
                                   anexoImagem2Path = c.anexoImagem2Path,
                                   anexoImagem3Path = c.anexoImagem3Path,
                                   anexoLogoPath = c.anexoLogoPath,
                                   ativo = c.ativo,
                                   cep = c.cep,
                                   cidade = c.cidade,
                                   complemento = c.complemento,
                                   contatoResponsavel = c.contatoResponsavel,
                                   cpfCnpj = c.cpfCnpj,
                                   email = c.email,
                                   endereco = c.endereco,
                                   estado = c.estado,
                                   Funcionamento = c.Funcionamento,
                                   id = c.id,
                                   idCategoriaCliente = c.idCategoriaCliente,
                                   idSubCategoriaCliente = c.idSubCategoriaCliente,
                                   inscricaoEstadual = c.inscricaoEstadual,
                                   nome = c.nome,
                                   nomeCategoria = ca.Nome,
                                   nomeFantasia = c.nomeFantasia,
                                   observacoes = c.observacoes,
                                   razaoSocial = c.razaoSocial,
                                   servicos = c.servicos,
                                   site = c.site,
                                   telefone1 = c.telefone1,
                                   telefone2 = c.telefone2
                               }).ToList();

                    lstClientesBusca = ret;

                }
            }
            catch (Exception)
            {
                throw;
            }

            return lstClientesBusca;
        }
    }
}
