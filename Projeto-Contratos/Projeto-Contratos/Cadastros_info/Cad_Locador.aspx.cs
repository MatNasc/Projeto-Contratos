using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Contratos.Cadastros_info
{

    public partial class Cad_Locador : System.Web.UI.Page

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


        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (IsCpf(txtCPF.Text) == false)
            {
                SiteMaster.ExibirAlert(this, "Dados inválidos.");
                return;
            }
            else
            {
                if (validateRg(txtRG.Text) == false)
                {
                    SiteMaster.ExibirAlert(this, "Dados inválidos.");                    
                    return;                   
                }
                else
                {                    
                    connection.Open();
                    string Endereco = txtRua.Text + "," + txtNum.Text + "," + txtBairro.Text + "," + txtCidade.Text;
                    var comando = new MySqlCommand($@"INSERT INTO locador (nome, cpf, rg,profissao, estado_civil, endereco) VALUES (@nome,@cpf,@rg,@profissao,@estadocivil,@endereco)", connection);
                    if (txtNome.Text == "" || txtCPF.Text == "" || txtRG.Text == "" || txtProfissao.Text == "" || txtNum.Text == "" || txtRua.Text == "" || txtCidade.Text == "" || txtBairro.Text == "")
                    {
                        SiteMaster.ExibirAlert(this, "Preencha todos os campos!");
                        return;
                    }
                    comando.Parameters.Add(new MySqlParameter("nome", txtNome.Text));
                    comando.Parameters.Add(new MySqlParameter("cpf", txtCPF.Text));
                    comando.Parameters.Add(new MySqlParameter("rg", txtRG.Text));
                    comando.Parameters.Add(new MySqlParameter("profissao", txtProfissao.Text));
                    comando.Parameters.Add(new MySqlParameter("estadocivil", DropList.Text));
                    comando.Parameters.Add(new MySqlParameter("endereco", Endereco));
                    comando.ExecuteNonQuery();
                    connection.Close();

                    SiteMaster.ExibirAlert(this, " Locador cadastrado com sucesso!");
                    txtNome.Text = "";
                }
            }
        }

        protected void txtCPF_TextChanged(object sender, EventArgs e)
        {
            if (IsCpf(txtCPF.Text) == false)
            {
                lblAlertaCpf.Text = "CPF invalido!";
                lblAlertaCpf.ForeColor = Color.Red;
            }
            else
            {
                lblAlertaCpf.Text = "";
            }

        }

        protected void txtRG_TextChanged(object sender, EventArgs e)
        {
            if (validateRg(txtRG.Text) == false)
            {
                lblAlertaRG.Text = "RG invalido";
                lblAlertaRG.ForeColor = Color.Red;
                               
            }
            else
            {
                lblAlertaRG.Text = "";
            }

        }
    }



}
