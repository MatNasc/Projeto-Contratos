using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.TelaBusca
{
    public partial class TelaBuscaLL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            DataTable tabela = new DataTable();

            tabela.Columns.Add("nome");
            tabela.Columns.Add("profissao");
            tabela.Columns.Add("estadocivil");
            tabela.Columns.Add("cpf");
            tabela.Columns.Add("rg");
            tabela.Columns.Add("rua");
            tabela.Columns.Add("numero");
            tabela.Columns.Add("bairro");
            tabela.Columns.Add("cidade");


            var linha = tabela.NewRow();
            linha["nome"] = "Thalles";
            linha["profissao"] = "Pastelero";
            linha["estadocivil"] = "Sexo";
            linha["cpf"] = "553.278.356.23";
            linha["rg"] = "654677456456";
            linha["rua"] = "José Fogo";
            linha["numero"] = "87";
            linha["bairro"] = "Piedade";
            linha["cidade"] = "Itajubá";
            tabela.Rows.Add(linha);

            grdClientes.DataSource = tabela;
            grdClientes.DataBind();
        }
    }
}