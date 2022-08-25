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
            var linha = tabela.NewRow();
            linha["nome"] = "Thalles";
            tabela.Rows.Add(linha);
            grdClientes.DataSource = tabela;
            grdClientes.DataBind();
        }
    }
}