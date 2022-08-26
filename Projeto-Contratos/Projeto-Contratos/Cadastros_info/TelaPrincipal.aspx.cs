using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{
    public partial class TelaPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLocador_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cad_Locador.aspx");
        }

        protected void btnLocatario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cad_Locatario.aspx");
        }

        protected void btnImovel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cad_Imovel.aspx"); 
        }
    }
}