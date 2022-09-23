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

            if (e.CommandName == "Visualizar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];
                var id_contrato = tabela.Rows[index]["id"].ToString();

                int id_locador = 0;
                int id_locatario = 0;
                int id_imovel = 0;
                connection.Open();
                var commando = new MySqlCommand($"SELECT id_locador, id_locatario, id_imovel FROM contrato WHERE id = {id_contrato}", connection);
                var reader1 = commando.ExecuteReader();
                while (reader1.Read())
                {
                   id_locador = reader1.GetInt32("id_locador");
                   id_locatario = reader1.GetInt32("id_locatario");
                   id_imovel = reader1.GetInt32("id_imovel");
                }
                connection.Close();
                Response.Redirect($"../Cadastros_info/contrato.aspx?id_locador={ id_locador}&id_locatario={ id_locatario}&id_imovel={ id_imovel}&id_contrato={ id_contrato}");

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
          
            
            var commando = new MySqlCommand($@"SELECT C.id,id_locador,id_locatario,id_imovel,data_inicio,data_fim,LT.nome n_lt,LD.nome n_ld FROM contrato C 
                INNER JOIN locador LD ON C.id_locador = LD.id 
                INNER JOIN locatario LT ON C.id_locatario = LT.id WHERE {filtro}", connection);
            var reader = commando.ExecuteReader();

            while (reader.Read())
            {
                var linha = tabela.NewRow();
                linha["id"] = reader.GetInt32("id");
                linha["Locador"] = reader.GetString("n_ld");
                linha["Locatario"] = reader.GetString("n_lt");
                linha["Código do Imóvel"] = reader.GetInt32("id_imovel");
                linha["Data de Inicio"] =reader.GetDateTime("data_inicio").ToShortDateString();
                linha["Data de Termino"] = reader.GetDateTime("data_fim").ToShortDateString();
                tabela.Rows.Add(linha);
            }
            Session["tabela"] = tabela;
            grd_Contratos.DataSource = tabela;
            grd_Contratos.DataBind();
        }
    }
}