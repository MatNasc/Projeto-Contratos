using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Negócio
{


    public class Locatario
    {
        private MySqlConnection connection;

        public Locatario()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classe.Locatario Verifica_Locatario(string nome, string cpf, string rg, string profissao, string estado_civil)
        {
            var user = new Classe.Locatario();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id FROM locatario WHERE nome= @nome,cpf= @cpf,rg= @rg profissao= @profissao, estado_civil= @estado_civil", connection);
                comand.Parameters.Add(new MySqlParameter("nome", nome));
                comand.Parameters.Add(new MySqlParameter("cpf", cpf));
                comand.Parameters.Add(new MySqlParameter("rg", rg));
                comand.Parameters.Add(new MySqlParameter("profissao", profissao));
                comand.Parameters.Add(new MySqlParameter("estado_civil", estado_civil));


                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    user.nome = reader.GetString("nome");
                    user.cpf = reader.GetString("cpf");
                    user.rg = reader.GetString("rg");
                    user.profissao = reader.GetString("profissao");
                    user.estado_civil = reader.GetString("estado_civil");




                }
                else
                {
                    user = null;
                }

            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }

            return user;
         
        } 
    }
}

    

    
