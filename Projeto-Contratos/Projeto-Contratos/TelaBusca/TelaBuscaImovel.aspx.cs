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
    public partial class TelaBuscaImovel : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            if (!IsPostBack)
            {
                connection.Open();

                droplistCidade.Items.Clear();
                var reader = new MySqlCommand("SELECT cidade FROM imovel",connection).ExecuteReader();

                while (reader.Read())
                {
                    var cidade = new ListItem(reader.GetString("cidade"));
                    droplistCidade.Items.Add(cidade);

                }

                connection.Close();

                connection.Open();

                droplistBairro.Items.Clear();
                var reader2 = new MySqlCommand("SELECT bairro FROM imovel", connection).ExecuteReader();

                while(reader2.Read())
                {
                    var bairro = new ListItem(reader2.GetString("bairro"));
                    droplistBairro.Items.Add(bairro);
                }

                connection.Close();

                DataTable imovel = new DataTable();

                imovel.Columns.Add("locador");
                imovel.Columns.Add("rua");
                imovel.Columns.Add("numero");
                imovel.Columns.Add("bairro");
                imovel.Columns.Add("cidade");
                imovel.Columns.Add("n_agua");
                imovel.Columns.Add("n_luz");
                imovel.Columns.Add("valor");

                connection.Open();

                var comando = new MySqlCommand($"SELECT id_locador,rua,numero,bairro,cidade,n_agua,n_luz,valor FROM imovel",connection);
                var reader3 = comando.ExecuteReader();
              
                while(reader3.Read())
                {
                    var linha = imovel.NewRow();
                    linha["locador"] = reader3.GetInt32("id_locador");
                    linha["rua"] = reader3.GetString("rua");
                    linha["numero"] = reader3.GetInt32("numero");
                    linha["bairro"] = reader3.GetString("bairro");
                    linha["cidade"] = reader3.GetString("cidade");
                    linha["n_agua"] = reader3.GetString("n_agua");
                    linha["n_luz"] = reader3.GetString("n_luz");
                    linha["valor"] = reader3.IsDBNull(7) ? "" : reader.GetString("valor");

                    imovel.Rows.Add(linha);
                }

                connection = new MySqlConnection(SiteMaster.ConnectionString);

                Session["tabela"] = imovel;
                grdImovel.DataSource = imovel;
                grdImovel.DataBind();

                connection.Close();
            }
        }

        protected void btnbuscaIM_Click(object sender, EventArgs e)
        {
       
        }

        protected void grdImovel_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}