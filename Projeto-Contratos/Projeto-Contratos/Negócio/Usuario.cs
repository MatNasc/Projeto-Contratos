using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using MySqlConnector;

namespace Projeto_Contratos.Negócio
{
    public class Usuario
    {

        private MySqlConnection connection;

        public Usuario()
        {

            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classe.Usuario Verifica_usuario(string usuario, string senha)
        {

            var user = new Classe.Usuario();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id FROM usuario WHERE usuario = @usuario AND senha = @senha ", connection);
                comand.Parameters.Add(new MySqlParameter("usuario", usuario));
                comand.Parameters.Add(new MySqlParameter("senha", senha));

                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    user.ID = reader.GetInt32("id");
                    user.User = reader.GetString("usuario");
                   
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