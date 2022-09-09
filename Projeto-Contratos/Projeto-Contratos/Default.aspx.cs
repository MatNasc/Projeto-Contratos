using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     


        protected void btnbuscaC_Click(object sender, EventArgs e)
        {
            Response.Redirect("/TelaBusca/TelaBuscaContrato.aspx");
        }

        protected void btnCADld_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Cadastros_info/Cad_Locador.aspx");
        }

        protected void btnCADlt_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Cadastros_info/Cad_Locatario.aspx");
        }

        protected void btnCADim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Cadastros_info/Cad_Imovel.aspx");
        }

        protected void btnbuscaLL_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/TelaBusca/TelaBuscaLL.aspx");
        }


        protected void btnBuscaImovel_Click(object sender, EventArgs e)
        {

        }
    }
}