using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{
    public partial class CAD_Contrato : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnCadastrarCont_Click(object sender, EventArgs e)
        {

        }

        protected void txt_CPFlt_TextChanged(object sender, EventArgs e)
        {
            string nome = txt_NomeLT.Text;
            string cpf = txt_CPFlt.Text;
            string rg = txt_RGlt.Text;
            string profissao = txt_ProfLT.Text;
            string EstadoCivil = txt_EClt.Text;
            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT * FROM locatario WHERE CPF= @cpf", connection);
                comand.Parameters.Add(new MySqlParameter("cpd", cpf));
                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    nome = reader.GetString("nome");
                    cpf = reader.GetString("cpf");
                    rg = reader.GetString("rg");
                    profissao = reader.GetString("profissao");
                    EstadoCivil = reader.GetString("estado_civil");

                }

            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
        }
    }
}