using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Tela_Login
{
    public partial class Tela_Inicial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_entrar_Click(object sender, EventArgs e)
        {

            var user = new Negócio.Usuario().Verifica_usuario(txtUsuario.Text, txtSenha.Text);

            if (user!=null)
            {
                Session["user"] = user;
                SiteMaster.ExibirAlert(this,"Usuário logado");
                Response.Redirect("../Default.aspx");
            }
            else
            {
                SiteMaster.ExibirAlert(this, "Usuário e/ou senhas incorretos");
            }

           
        }
    }
}