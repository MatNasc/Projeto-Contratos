using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.PaginasEditar
{
    public partial class EditaInfoLocatario : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);


            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                var locatario = new Negócio.Locatario().LocatarioPorId(id);
                if (locatario == null)
                {
                    SiteMaster.ExibirAlert(this, "Locatario não identificado, realize a pesquisa novamente", "TelaBuscaLL.aspx");
                    return;
                }

                connection.Open();
                var reader = new MySqlCommand($"SELECT nome,cpf,rg,profissao,estado_civil FROM locatario WHERE id = {id}", connection).ExecuteReader();

                if (reader.Read())
                {
                    txt_nomeLT.Text = reader.GetString("nome");
                    txt_LTCPF.Text = reader.GetString("cpf");
                    txt_LTRG.Text = reader.GetString("rg");
                    txt_profLT.Text = reader.GetString("profissao");
                    DropList.SelectedValue = reader.GetString("estado_civil");
                }


                connection.Close();




            }

          

        }

        protected void btnEditarLT_Click(object sender, EventArgs e)
        {
            var locatario= new Classe.Locatario();
            locatario.Id = Convert.ToInt32(Request.QueryString["id"].ToString());
            locatario.Nome = txt_nomeLT.Text;
            locatario.Cpf = txt_LTCPF.Text;
            locatario.Rg = txt_LTRG.Text;
            locatario.Profissao = txt_profLT.Text;
            new Negócio.Locatario().Update(locatario);
            SiteMaster.ExibirAlert(this, "Locatario  alterado com sucesso!", "TelaBuscaLL.aspx");


        }
    }
}