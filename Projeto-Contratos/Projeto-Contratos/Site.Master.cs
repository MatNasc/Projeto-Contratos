using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos
{
    public partial class SiteMaster : MasterPage
    {

        public static string ConnectionString = "Server=127.0.0.1;User ID=root;Password=;Database=imobiliaria";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static void ExibirAlert(Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }



        public static void ExibirAlert(Page page, string mensagem, string pagina)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');window.location = '" + pagina + "';</script>"
              );
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Tela_Login/Tela_Inicial.aspx");
        }
    }
}