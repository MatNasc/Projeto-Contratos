using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.TelaBusca
{
    public partial class TelaBuscaContrato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grd_Contratos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            

        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            DataTable tabela = new DataTable();

            tabela.Columns.Add("Locatario");
            tabela.Columns.Add("Locador");
            tabela.Columns.Add("Código do Imóvel");
            tabela.Columns.Add("Nº do Contrato");
            tabela.Columns.Add("Data de Inicio");
            tabela.Columns.Add("Data de Termino");
            
            

            var linha = tabela.NewRow();

            linha["Locatario"] = "Matheus Carvalho";
            linha["Locador"] = "Israel Venancio";
            linha["Código do Imóvel"] = "0118";
            linha["Nº do Contrato"] = "2345678";
            linha["Data de Inicio"] = "20/10/2022";
            linha["Data de Termino"] = "20/10/2023";
            
            
            tabela.Rows.Add(linha);

            grd_Contratos.DataSource = tabela;
            grd_Contratos.DataBind();

        }
    }
}