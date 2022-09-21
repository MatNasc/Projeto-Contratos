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
            if (!IsPostBack)
            {
                var idlocador = Request.QueryString["id"].ToString();
                var locador = new Negócio.Locador().LocadorPorId(idlocador);
                if (locador == null)
                {
                    SiteMaster.ExibirAlert(this, "Impossivel de alugar", "~/TelaBusca/TelaBuscaImovel.aspx");
                    return;
                }

                connection.Open();

                var reader = new MySqlCommand($"SELECT I.id,nome,id_locador,rua,rg,numero,bairro,cidade,cpf,n_agua,n_luz,valor FROM imovel I INNER JOIN locador L ON I.id_locador = L.id WHERE id_locador=" + idlocador, connection).ExecuteReader();

                if (reader.Read())
                {
                    Session["id_locador"] = reader.GetInt32("id_locador");
                    Session["id_imovel"] = reader.GetInt32("id");
                    txt_NomeLD.Text = reader.GetString("nome");
                    txt_CPFLD.Text = reader.GetString("cpf");
                    txt_RGLD.Text = reader.GetString("rg");
                    txt_Valor.Text = reader.GetFloat("valor").ToString();
                    txt_Rua.Text = reader.GetString("rua");
                    txt_num.Text = reader.GetInt32("numero").ToString();
                    txt_Bairro.Text = reader.GetString("bairro");
                    txt_Cidade.Text = reader.GetString("cidade");
                    txt_nAgua.Text = reader.GetString("n_agua");
                    txt_nLuz.Text = reader.GetString("n_luz");
                }
                connection.Close();

            }
        }



        protected void txt_CPFlt_TextChanged(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT * FROM locatario WHERE CPF = @cpf", connection);
                comand.Parameters.Add(new MySqlParameter("cpf", txt_CPFlt.Text));
                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    Session["id_locatario"] = reader.GetInt32("id");
                    txt_NomeLT.Text = reader.GetString("nome");
                    txt_CPFlt.Text = reader.GetString("cpf");
                    txt_RGlt.Text = reader.GetString("rg");
                    txt_EClt.Text = reader.GetString("estado_civil");
                    txt_ProfLT.Text = reader.GetString("profissao");
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

        protected void btnCadastrarCont_Click(object sender, EventArgs e)
        {
            connection.Open();
            int id_locatario = (int)Session["id_locatario"];
            int id_locador = (int)Session["id_locador"];
            int id_imovel = (int)Session["id_imovel"];
            var comando = new MySqlCommand($@"INSERT INTO `contrato`(`id_locador`, `id_locatario`, `id_imovel`, `data_inicio`, `data_fim`) VALUES ('{id_locador}','{id_locatario}','{id_imovel}','{txt_DataI.Text}','{txt_DataF.Text}')", connection);
            comando.ExecuteNonQuery();
            Response.Redirect($"contrato.aspx?id_locador={id_locador},id_locatario={id_locatario},id_imovel={id_imovel} ");
            connection.Close();
        }
    }
}