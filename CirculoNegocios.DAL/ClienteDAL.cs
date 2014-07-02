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
                               where (c.estado == estado) && (c.nome.Contains(texto) || ca.Nome.Contains(texto) || sca.Nome.Contains(texto)) && (c.ativo == true)
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

        public List<ClienteEntity> ConsultaClientesBySubCategoria(int idSubCategoria, string estado)
        {
            List<ClienteEntity> lstClientesBusca = new List<ClienteEntity>();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {

                    var ret = (from c in context.tbClientes
                               join ca in context.tbCategoriaClientes on c.idCategoriaCliente equals ca.id
                               join sca in context.tbSubCategoriaClientes on c.idSubCategoriaCliente equals sca.id
                               where c.estado == estado && c.idSubCategoriaCliente == idSubCategoria && c.ativo == true
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

        public ClienteEntity ConsultaClienteById(int idCliente)
        {
            ClienteEntity cliente = new ClienteEntity();

            try
            {
                using (var context = new CirculoNegocioEntities())
                {
                    var ret = (from p in context.tbClientes
                               where p.id == idCliente
                               select p).First();

                    cliente = CastClienteEntity(ret);
                }
            }
            catch (Exception)
            {
                throw;
            }

            return cliente;
        }

        private ClienteEntity CastClienteEntity(tbCliente cliente)
        {
            ClienteEntity objCliente = new ClienteEntity();

            objCliente.anexoImagem1Path = cliente.anexoImagem1Path;
            objCliente.anexoImagem2Path = cliente.anexoImagem2Path;
            objCliente.anexoImagem3Path = cliente.anexoImagem3Path;
            objCliente.anexoLogoPath = cliente.anexoLogoPath;
            objCliente.ativo = cliente.ativo;
            objCliente.cep = cliente.cep;
            objCliente.cidade = cliente.cidade;
            objCliente.complemento = cliente.complemento;
            objCliente.contatoResponsavel = cliente.contatoResponsavel;
            objCliente.cpfCnpj = cliente.cpfCnpj;
            objCliente.email = cliente.email;
            objCliente.endereco = cliente.endereco;
            objCliente.estado = cliente.estado;
            objCliente.Funcionamento = cliente.Funcionamento;
            objCliente.idCategoriaCliente = cliente.idCategoriaCliente;
            objCliente.idSubCategoriaCliente = cliente.idSubCategoriaCliente;
            objCliente.inscricaoEstadual = cliente.inscricaoEstadual;
            objCliente.nome = cliente.nome;
            objCliente.nomeFantasia = cliente.nomeFantasia;
            objCliente.observacoes = cliente.observacoes;
            objCliente.razaoSocial = cliente.razaoSocial;
            objCliente.servicos = cliente.servicos;
            objCliente.site = cliente.site;
            objCliente.telefone1 = cliente.telefone1;
            objCliente.telefone2 = cliente.telefone2;

            objCliente.bairro = cliente.bairro;
            objCliente.horaFdsAte = cliente.horaFdsAte;
            objCliente.horaFdsDe = cliente.horaFdsDe;
            objCliente.horaSemanaAte = cliente.horaSemanaAte;
            objCliente.horaSemanaDe = cliente.horaSemanaDe;


            return objCliente;
        }
    }
}
