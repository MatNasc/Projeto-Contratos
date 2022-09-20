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
        protected string cpf;
        protected string rg;
        protected string endereçolt;
        protected string endereçold;
        protected string endereçoim;
        protected string valor;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            var id_locador = Request.QueryString["id_locador"].ToString();
            var id_locatario = Request.QueryString["id_locatario"].ToString();
            var id_imovel = Request.QueryString["id_imovel"].ToString();

            var comando = new MySqlCommand($"SELECT `id`, `id_locador`, `id_locatario`, `id_imovel`, `data_inicio`, `data_fim` FROM `contrato` WHERE 1",connection);
            comando.ExecuteNonQuery();
            
        }

        protected void btn_imprimir_Click(object sender, EventArgs e)
        {
        }
    }
}