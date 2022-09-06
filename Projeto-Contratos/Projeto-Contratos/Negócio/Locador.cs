using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using MySqlConnector;

namespace Projeto_Contratos.Negócio
{
    public class Locador
    {
        private MySqlConnection connection;
        public Locador()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }


        public List<Classe.Locador> Read(string id)
        {
            var Locador = new List<Classe.Locador>();
            try
            {
                connection.Open();
                var commando = new MySqlCommand($"SELECT `id`, `nome`, `cpf`, `rg`, `profissao`, `estado_civil`, `endereco` FROM `locador` WHERE (1=1) ", connection);
                if (id.Equals("") == false)
                {
                    commando.CommandText += $" AND id = @id";
                    commando.Parameters.Add(new MySqlParameter("id", id));
                }
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    Locador.Add(new Classe.Locador
                    {
                        nome = reader.GetString("nome"),
                        cpf = reader.GetString("cpf"),
                        rg = reader.GetString("rg"),
                        profissao = reader.GetString("profissao"),
                        estadocivil = reader.GetString("estado_civil"),
                        endereco = reader.GetString("endereco"),
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
            return Locador;
        }
    }

   
}