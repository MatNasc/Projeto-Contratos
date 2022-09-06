using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using MySqlConnector;
namespace Projeto_Contratos.Negócio
{
    public class Locatario
    {
        private MySqlConnection connection;
        public Locatario()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }


        public List<Classe.Locatário> Read(string id)
        {
            var Locatario = new List<Classe.Locatário>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT `id`, `nome`, `cpf`, `rg`, `profissao`, `estado_civil` FROM `locatario` WHERE (1=1) ", connection);
                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    Locatario.Add(new Classe.Locatário
                    {
                        nome = reader.GetString("nome"),
                        cpf = reader.GetString("cpf"),
                        rg = reader.GetString("rg"),
                        profissao = reader.GetString("profissao"),
                        estadocivil = reader.GetString("estado_civil"),
                        id = reader.GetInt32("id")
                    });
                }
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return Locatario;
        }
    }
}