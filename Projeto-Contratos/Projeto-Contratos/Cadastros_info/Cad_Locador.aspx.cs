using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{
    public partial class Cad_Locador : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            connection.Open();
            var comando = new MySqlCommand($@"INSERT INTO locador (nome, profissao, estado_civil, CPF, RG, rua, num_casa, bairro, cidade) 
                VALUES ('{txtNome.Text}','{txtProfissão.Text}','{lblEC.Text}','{txtCPF.Text}','{txtCPF.Text}','{txtRG.Text}','{txtRua.Text}',
                '{txtNum.Text}','{txtBairro.Text}','{txtCidade.Text}')", connection);
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, "Locador cadastrado com sucesso!");
            txtNome.Text = "";
        }
    }
}