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
            string Endereco = txtRua.Text + "," + txtNum.Text + "," + txtBairro.Text + "," + txtCidade.Text;
            var comando = new MySqlCommand($@"INSERT INTO locador (nome, cpf, rg,profissao, estado_civil, endereco) VALUES (@nome,@cpf,@rg,@profissao,@estadocivil,@endereco)", connection);
            comando.Parameters.Add(new MySqlParameter("nome", txtNome.Text));
            comando.Parameters.Add(new MySqlParameter("cpf", txtCPF.Text));
            comando.Parameters.Add(new MySqlParameter("rg", txtRG.Text));
            comando.Parameters.Add(new MySqlParameter("profissao", txtProfissao.Text));
            comando.Parameters.Add(new MySqlParameter("estadocivil", DropList.Text));
            comando.Parameters.Add(new MySqlParameter("endereco", Endereco));
            comando.ExecuteNonQuery();
            connection.Close();

            SiteMaster.ExibirAlert(this, " Locador cadastrado com sucesso!");
            txtNome.Text = "";
        }

    }
}