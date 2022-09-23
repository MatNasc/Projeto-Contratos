using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
namespace Projeto_Contratos.Cadastros_info
{

    public partial class Contrato : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected string datainicio;
        protected string tempttllocação;
        protected string datatermino;
        protected string nomeld;
        protected string nomelt;
        protected string cpf_locador;
        protected string cpf_locatario;
        protected string rg_locador;
        protected string rg_locatario;
        protected string endereçold;
        protected string endereçoim;
        protected string valor;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            var id_locador = Request.QueryString["id_locador"].ToString();
            var id_locatario = Request.QueryString["id_locatario"].ToString();
            var id_imovel = Request.QueryString["id_imovel"].ToString();
            var id_contrato = Request.QueryString["id_contrato"].ToString();

            connection.Open();
            var comando = new MySqlCommand($"SELECT `data_inicio`, `data_fim` FROM `contrato` WHERE id = {id_contrato}", connection);
            var reader = comando.ExecuteReader();
            if (reader.Read())
            {
                datainicio = reader.GetDateTime("data_inicio").ToShortDateString();
                datatermino = reader.GetDateTime("data_fim").ToShortDateString();
                var nContrato = id_contrato + 10000;
                tempttllocação = (reader.GetDateTime("data_fim") - reader.GetDateTime("data_inicio")).TotalDays.ToString();
               
            }


            connection.Close();

            connection.Open();
            var comando_locador = new MySqlCommand($"SELECT nome, cpf, rg, profissao, estado_civil, endereco FROM locador WHERE id={id_locador}", connection);
            var reader1 = comando_locador.ExecuteReader();
            if (reader1.Read())
            {
                nomeld = reader1.GetString("nome");
                cpf_locador = reader1.GetString("cpf");
                endereçold = reader1.GetString("endereco");
            }
            connection.Close();

            connection.Open();
            var comando_locatario = new MySqlCommand($"SELECT nome, cpf, rg FROM locatario WHERE id={id_locatario}", connection);
            var reader2 = comando_locatario.ExecuteReader();
            if (reader2.Read())
            {
                nomelt = reader2.GetString("nome");
                cpf_locatario = reader2.GetString("cpf");
                rg_locatario = reader2.GetString("rg");
            }
            connection.Close();

            connection.Open();

            var comando_imovel = new MySqlCommand($"SELECT rua, numero, bairro, cidade, valor FROM imovel WHERE id={id_imovel}", connection);
            var reader3 = comando_imovel.ExecuteReader();
            if (reader3.Read())
            {
                var rua = reader3.GetString("rua");
                var numero = reader3.GetInt32("numero").ToString();
                var bairro = reader3.GetString("bairro");
                var cidade = reader3.GetString("cidade");
                endereçoim = rua + "," + numero + "," + bairro + "," + cidade;
                valor = reader3.GetFloat("valor").ToString();
            }
            connection.Close();




        }

        protected void btn_imprimir_Click(object sender, EventArgs e)
        {
        }
    }
}