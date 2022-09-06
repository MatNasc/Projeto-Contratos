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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"].ToString();
                var Locador= new Negócio.Locador().LocadorPorId(Convert.ToInt32(id));
                if (Locador == null)
                {
                    SiteMaster.ExibirAlert(this, "Locador não identificado, realize a pesquisa novamente", "TelaBuscaLL.aspx");
                    return;
                }
                
               
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

        }
    }
}