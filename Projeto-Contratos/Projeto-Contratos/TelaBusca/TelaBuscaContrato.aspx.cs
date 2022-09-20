using MySqlConnector;
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
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void grd_Contratos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM contrato WHERE id = " + tabela.Rows[index]["id"].ToString(), connection);
                comando.ExecuteNonQuery();
                connection.Close();

                SiteMaster.ExibirAlert(this, "Contrato excluído com sucesso!");
                BtnPesquisar_Click(null, null);
            }

            if (e.CommandName == "editar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];
                Response.Redirect("PaginasEditar/EditaImovel.aspx?id=" + tabela.Rows[index]["id"].ToString());
            }

        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            DataTable tabela = new DataTable();

            tabela.Columns.Add("id");
            tabela.Columns.Add("Locador");
            tabela.Columns.Add("Locatario");
            tabela.Columns.Add("Código do Imóvel");
            tabela.Columns.Add("Nº do Contrato");
            tabela.Columns.Add("Data de Inicio");
            tabela.Columns.Add("Data de Termino");


            string filtro = " (1=1) ";

            if (Consultar.Text.Equals("") == false)
            {
                var id = Convert.ToInt32(Consultar.Text) - 10000;
                filtro = filtro + $" AND id= {id}";
            } 

            connection.Open();
          
            
            var commando = new MySqlCommand($@"SELECT id_locador,id_locatario,id_imovel,data_inicio,data_fim FROM contrato WHERE {filtro}", connection);
            var reader = commando.ExecuteReader();

            while (reader.Read())
            {
                var linha = tabela.NewRow();
                linha["Locador"] = reader.GetInt32("id_locador");
                linha["Locatario"] = reader.GetInt32("id_locatario");
                linha["Código do Imóvel"] = reader.GetInt32("id_imovel");
                linha["Data de Inicio"] =reader.GetDateTime("data_inicio");
                linha["Data de Termino"] = reader.GetDateTime("data_fim");
                tabela.Rows.Add(linha);
            }
            Session["tabela"] = tabela;
            grd_Contratos.DataSource = tabela;
            grd_Contratos.DataBind();
        }
    }
}