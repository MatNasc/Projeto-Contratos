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

                var comando = new MySqlCommand("SELECT id_locador,rua,numero,bairro,cidade,n_agua,n_luz,valor FROM imovel", connection);
                var reader = comando.ExecuteReader();

                
                while(reader.Read())
                {
                    var linha = imovel.NewRow();
                    linha["locador"] = reader.GetInt32("id_locador");
                    linha["rua"] = reader.GetString("rua");
                    linha["numero"] = reader.GetInt32("numero");
                    linha["bairro"] = reader.GetString("bairro");
                    linha["cidade"] = reader.GetString("cidade");
                    linha["n_agua"] = reader.GetString("n_agua");
                    linha["n_luz"] = reader.GetString("n_luz");
                    linha["valor"] = reader.IsDBNull(7) ? "" : reader.GetString("valor");

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