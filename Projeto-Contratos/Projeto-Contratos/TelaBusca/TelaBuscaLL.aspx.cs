using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.TelaBusca
{
    public partial class TelaBuscaLL : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            if (!IsPostBack)
            {
            }


        }

        protected void grdClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var locador = (DataTable)Session["tabela"];

            if (e.CommandName == "excluir")
            {
                if (new Negócio.Locador().Delete(locador.Rows[index]["id"].ToString()))
                    SiteMaster.ExibirAlert(this, "Locador excluído com sucesso!");
                else
                    SiteMaster.ExibirAlert(this, "Locador não pode ser excluído porque ele está sendo usado! ");
                TelaBusca.TelaBuscaLL buscaLL = new TelaBusca.TelaBuscaLL();
                buscaLL.btnBusca_Click(null, null);
            }

            if (e.CommandName == "editar")
            {
                Response.Redirect("~/PaginasEditar/EditaInfoLocador.aspx?id=" + locador.Rows[index]["id"].ToString());
            }

        }

        /*CODIGO DE BUSCA DO LOCADOR E LOCATARIO*/


        protected void GrdClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var locadores = (DataTable)Session["tabela"];

            if (e.CommandName == "cad_imovel")
            {
                Response.Redirect("~/Cadastros_info/Cad_Imovel.aspx?id=" + locadores.Rows[index]["id"].ToString());
            }

            if (e.CommandName == "editar")
            {
                Response.Redirect("~/PaginasEditar/EditarInfoLocador.aspx?id=" + locadores.Rows[index]["id"].ToString());
            }


        }

        protected void grdClientes2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var locatario = (DataTable)Session["tabela"];

            if (e.CommandName == "cad_imovel")
            {
                Response.Redirect("~/Cadastros_info/Cad_Imovel.aspx?id=" + locatario.Rows[index]["id"].ToString());
            }

            if (e.CommandName == "editar")
            {
                Response.Redirect("~/PaginasEditar/EditaInfoLocatario.aspx?id=" + locatario.Rows[index]["id"].ToString());
            }



        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {

            if (RadioButton.Checked == true)
            {

                /*CODIGO DE BUSCA DO LOCADOR*/
                DataTable locador = new DataTable();

                locador.Columns.Add("id");
                locador.Columns.Add("nome");
                locador.Columns.Add("profissao");
                locador.Columns.Add("estadocivil");
                locador.Columns.Add("cpf");
                locador.Columns.Add("rg");
                locador.Columns.Add("endereco");

                string FiltroLocador = " (1=1) ";
                if (txtBusca.Text.Equals("") == false)
                {
                    FiltroLocador = FiltroLocador + $" AND nome like '%{txtBusca.Text}%'";
                }

                connection.Open();


                var commando1 = new MySqlCommand($"SELECT id, nome, cpf, rg, profissao, estado_civil, endereco FROM locador WHERE @filtrolocador", connection);
                commando1.Parameters.Add(new MySqlParameter("filtrolocador",FiltroLocador));
                var reader1 = commando1.ExecuteReader();
                while (reader1.Read())

                {

                    var linha = locador.NewRow();
                    linha["id"] = reader1.GetInt32("id");
                    linha["nome"] = reader1.GetString("nome");
                    linha["cpf"] = reader1.GetString("cpf");
                    linha["rg"] = reader1.GetString("rg");
                    linha["profissao"] = reader1.GetString("profissao");
                    linha["estadocivil"] = reader1.GetString("estado_civil");
                    linha["endereco"] = reader1.GetString("endereco");

                    locador.Rows.Add(linha);
                }

                Session["tabela"] = locador;
                grdClientes.DataSource = locador;
                grdClientes.DataBind();

                grdClientes2.DataSource = null;
                grdClientes2.DataBind();

                connection.Close();
            }

            if (RadioButton2.Checked == true)
            {
                /*CODIGO DE BUSCA DO LOCATARIO*/

                DataTable locatario = new DataTable();

                locatario.Columns.Add("id");
                locatario.Columns.Add("nome");
                locatario.Columns.Add("cpf");
                locatario.Columns.Add("rg");
                locatario.Columns.Add("profissao");
                locatario.Columns.Add("estadocivil");


                string FiltroLocatario = " (1=1) ";
                if (txtBusca.Text.Equals("") == false)
                {
                    FiltroLocatario = FiltroLocatario + $" AND nome like '%{txtBusca.Text}%'";
                }


                connection.Open();


                var commando2 = new MySqlCommand($"SELECT id, nome, cpf, rg, profissao, estado_civil FROM locatario WHERE @filtrolocatario", connection);
                commando2.Parameters.Add(new MySqlParameter("filtrolocatario", FiltroLocatario));
                var reader2 = commando2.ExecuteReader();
                while (reader2.Read())

                {
                    var linha = locatario.NewRow();

                    linha["id"] = reader2.GetInt32("id");
                    linha["nome"] = reader2.GetString("nome");
                    linha["cpf"] = reader2.GetString("cpf");
                    linha["rg"] = reader2.GetString("rg");

                    linha["profissao"] = reader2.IsDBNull(4) ? "" : reader2.GetString("profissao");

                    linha["estadocivil"] = reader2.GetString("estado_civil");

                    locatario.Rows.Add(linha);
                }
                Session["tabela"] = locatario;
                grdClientes2.DataSource = locatario;
                grdClientes2.DataBind();

                grdClientes.DataSource = null;
                grdClientes.DataBind();

                connection.Close();
            }
        }
    }
}