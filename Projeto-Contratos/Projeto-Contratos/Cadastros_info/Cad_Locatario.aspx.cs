using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Projeto_Contratos.Cadastros_info
{
    public partial class Cad_Locatario : System.Web.UI.Page
    {

        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnCadastrarLT_Click(object sender, EventArgs e)
        {
            connection.Open();
            
            var comando = new MySqlCommand($@"INSERT INTO locatario (nome, cpf, rg,profissao,estado_civil) VALUES (@nome,@cpf,@rg,@profissao,@estadocivil)", connection);
            comando.Parameters.Add(new MySqlParameter("nome", txt_nomeLT.Text));
            comando.Parameters.Add(new MySqlParameter("cpf", txt_LTCPF.Text));
            comando.Parameters.Add(new MySqlParameter("rg", txt_LTRG.Text));
            comando.Parameters.Add(new MySqlParameter("profissao", txt_profLT.Text));
            comando.Parameters.Add(new MySqlParameter("estadocivil", DropList.Text));
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, " Locatário cadastrado com sucesso!");
            txt_nomeLT.Text = "";
        }
    }
}