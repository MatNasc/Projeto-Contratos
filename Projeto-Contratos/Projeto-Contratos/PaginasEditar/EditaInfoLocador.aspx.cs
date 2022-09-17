using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.PaginasEditar
{
    public partial class EditaInfoLocador : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                var locador = new Negócio.Locador().LocadorPorId(id);
                if (locador == null)
                {
                    SiteMaster.ExibirAlert(this, "Locador não identificado, realize a pesquisa novamente", "../TelaBusca/TelaBuscaLL.aspx");
                    return;
                }

                connection.Open();
                var reader = new MySqlCommand($"SELECT nome,cpf,rg,profissao,estado_civil,endereco FROM locador WHERE id = {id}", connection).ExecuteReader();

                if(reader.Read())
                {
                    txtNome.Text = reader.GetString("nome");
                    txtCPF.Text = reader.GetString("cpf");
                    txtRG.Text = reader.GetString("rg");
                    txtProfissao.Text = reader.GetString("profissao");
                    DropList.SelectedValue = reader.IsDBNull(4) ? "" : reader.GetString("estado_civil");
                    txt_endereco.Text = reader.GetString("endereco");
                }


                connection.Close();




            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {        
            var locador = new Classe.Locador();
            locador.Id = Convert.ToInt32(Request.QueryString["id"].ToString());
            locador.Nome=txtNome.Text;
            locador.Cpf = txtCPF.Text;
            locador.Rg = txtRG.Text;
            locador.Profissao = txtProfissao.Text;
            locador.Estado_civil = DropList.Text;
            locador.Endereco = txt_endereco.Text;
            new Negócio.Locador().Update(locador);
            SiteMaster.ExibirAlert(this, "Locador  alterado com sucesso!", "/TelaBusca/TelaBuscaLL.aspx");

        }
    }
}