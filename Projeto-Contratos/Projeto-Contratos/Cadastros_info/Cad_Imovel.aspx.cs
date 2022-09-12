using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{
    public partial class Cad_Imovel : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnCadastrar_IM_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"].ToString();
            connection.Open();

            var comando = new MySqlCommand($@"INSERT INTO imovel (id_locador, rua, numero,bairro,cidade,n_agua,n_luz) VALUES (@id_locador,@rua,@numero,@bairro,@cidade,@n_agua,@n_luz)", connection);
            comando.Parameters.Add(new MySqlParameter("id_locador", id));
            comando.Parameters.Add(new MySqlParameter("rua", txtRua_IM.Text));
            comando.Parameters.Add(new MySqlParameter("numero", txtNum_IM.Text));
            comando.Parameters.Add(new MySqlParameter("bairro", txtBairro_IM.Text));
            comando.Parameters.Add(new MySqlParameter("cidade", txtCidade_IM.Text));
            comando.Parameters.Add(new MySqlParameter("n_agua", txtAgua.Text));
            comando.Parameters.Add(new MySqlParameter("n_luz", txtLuz.Text));
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, " Imóvel cadastrado com sucesso!", "../TelaBusca/TelaBuscaLL.aspx");
           
        }
    }
}