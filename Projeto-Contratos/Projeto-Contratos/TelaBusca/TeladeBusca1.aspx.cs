using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.TelaBusca
{
    public partial class TeladeBusca1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLL_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaBuscaLL.aspx");
        }

        protected void btnContratos_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaBuscaContrato.aspx");
        }
    }
}