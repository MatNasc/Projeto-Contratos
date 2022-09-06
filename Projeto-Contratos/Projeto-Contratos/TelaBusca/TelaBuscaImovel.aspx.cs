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


                connection.Open();

                var comando = new MySqlCommand("SELECT id_locador,rua,numero,bairro,cidade,n_agua,n_luz,valor FROM imovel", connection);
                var reader = comando.ExecuteReader();
                
                while(reader.Read())
                {
                    var linha = imovel.NewRow();
                }
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