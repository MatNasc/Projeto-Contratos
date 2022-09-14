using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace Projeto_Contratos.PaginasEditar
{
    public partial class EditaInfoLocatario : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

        }
        public static bool IsCpf(string cpf)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            string tempCpf;
            string digito;
            int soma;
            int resto;
            cpf = cpf.Trim();
            cpf = cpf.Replace(".", "").Replace("-", "");
            if (cpf.Length != 11)
                return false;
            tempCpf = cpf.Substring(0, 9);
            soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);
        }

        public bool validateRg(string rg)
        {
            //Elimina da string os traços, pontos e virgulas,
            rg = rg.Replace("-", "").Replace(".", "").Replace(",", "");

            //Verifica se o tamanho da string é 9
            if (rg.Length == 9)
            {
                int[] n = new int[9];

                try
                {
                    n[0] = Convert.ToInt32(rg.Substring(0, 1));
                    n[1] = Convert.ToInt32(rg.Substring(1, 1));
                    n[2] = Convert.ToInt32(rg.Substring(2, 1));
                    n[3] = Convert.ToInt32(rg.Substring(3, 1));
                    n[4] = Convert.ToInt32(rg.Substring(4, 1));
                    n[5] = Convert.ToInt32(rg.Substring(5, 1));
                    n[6] = Convert.ToInt32(rg.Substring(6, 1));
                    n[7] = Convert.ToInt32(rg.Substring(7, 1));
                    if (rg.Substring(8, 1).Equals("x") || rg.Substring(8, 1).Equals("X"))
                    {
                        n[8] = 10;
                    }
                    else
                    {
                        n[8] = Convert.ToInt32(rg.Substring(8, 1));
                    }
                }
                catch (Exception)
                {
                    return false;
                }
                //obtém cada um dos caracteres do rg

                //Aplica a regra de validação do RG, multiplicando cada digito por valores pré-determinados
                n[0] *= 2;
                n[1] *= 3;
                n[2] *= 4;
                n[3] *= 5;
                n[4] *= 6;
                n[5] *= 7;
                n[6] *= 8;
                n[7] *= 9;
                n[8] *= 100;

                //Valida o RG
                int somaFinal = n[0] + n[1] + n[2] + n[3] + n[4] + n[5] + n[6] + n[7] + n[8];
                if ((somaFinal % 11) == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

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

        protected void txt_LTCPF_TextChanged(object sender, EventArgs e)
        {           
                if (IsCpf(txt_LTCPF.Text) == false)
                {
                    lblAlertaCpf.Text = "CPF invalido!";
                    lblAlertaCpf.ForeColor = Color.Red;
                }            
        }

        protected void txt_LTRG_TextChanged(object sender, EventArgs e)
        {

            if (validateRg(txt_LTRG.Text) == false)
            {
                lblAlertaRG.Text = "RG invalido!";
                lblAlertaRG.ForeColor = Color.Red;
            }
        }
    }
}