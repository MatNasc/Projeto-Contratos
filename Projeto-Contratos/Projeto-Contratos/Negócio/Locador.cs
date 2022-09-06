using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Negócio
{
    public class Locador
    {
        private MySqlConnection connection;

        public Locador()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public Classe.Locador LocadorPorId(int id)
        {
            var user = new Classe.Locador();
            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT * FROM locador WHERE id= @id", connection);
                comand.Parameters.Add(new MySqlParameter("id", id));
                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    user.nome = reader.GetString("nome");
                    user.cpf = reader.GetString("cpf");
                    user.rg = reader.GetString("rg");
                    user.profissao = reader.GetString("profissao");
                    user.estado_civil = reader.GetString("estado_civil");
                    user.endereco = reader.GetString("endereco");
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



            public Classe.Locador Verifica_Locador(string nome, string cpf, string rg, string profissao, string estado_civil, string endereco)
        {
             var user = new Classe.Locador();

            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT id FROM locador WHERE nome= @nome,cpf= @cpf,rg= @rg profissao= @profissao, estado_civil= @estado_civil, endereco= @endereco", connection);
                comand.Parameters.Add(new MySqlParameter("nome", nome));
                comand.Parameters.Add(new MySqlParameter("cpf", cpf));
                comand.Parameters.Add(new MySqlParameter("rg", rg));
                comand.Parameters.Add(new MySqlParameter("profissao", profissao));
                comand.Parameters.Add(new MySqlParameter("estado_civil", estado_civil));
                comand.Parameters.Add(new MySqlParameter("endereco", endereco));

                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    user.nome = reader.GetString("nome");
                    user.cpf = reader.GetString("cpf");
                    user.rg = reader.GetString("rg");
                    user.profissao = reader.GetString("profissao");
                    user.estado_civil = reader.GetString("estado_civil");
                    user.endereco = reader.GetString("endereco");



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
        }    }  }
    
