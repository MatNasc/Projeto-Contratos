using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{
    public partial class Cad_Contrato : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void grdLocatarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void btnBuscaLt_Click(object sender, EventArgs e)
        {
            DataTable locatario = new DataTable();

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


            var commando2 = new MySqlCommand($"SELECT nome, cpf, rg, profissao, estado_civil FROM locatario WHERE {FiltroLocatario}", connection);
            var reader2 = commando2.ExecuteReader();
            while (reader2.Read())

            {
                var linha = locatario.NewRow();
                linha["nome"] = reader2.GetString("nome");
                linha["cpf"] = reader2.GetString("cpf");
                linha["rg"] = reader2.GetString("rg");
                linha["profissao"] = reader2.GetString("profissao");
                linha["estadocivil"] = reader2.GetString("estado_civil");

                locatario.Rows.Add(linha);
            }
            Session["tabela"] = locatario;
            grdLocatarios.DataSource = locatario;
            grdLocatarios.DataBind();

            grdLocatarios.DataSource = null;
            grdLocatarios.DataBind();

            connection.Close();
        }
    }
    }