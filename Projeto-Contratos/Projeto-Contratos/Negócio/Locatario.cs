using MySqlConnector;
using Projeto_Contratos.Classe;
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

        public Classe.Locatario LocatarioPorId(string id)
        {
            var user = new Classe.Locatario();
            try
            {
                connection.Open();
                var comand = new MySqlCommand($"SELECT * FROM locatario WHERE id= @id", connection);
                comand.Parameters.Add(new MySqlParameter("id", id));
                var reader = comand.ExecuteReader();
                if (reader.Read())
                {
                    user.Nome = reader.GetString("nome");
                    user.Cpf = reader.GetString("cpf");
                    user.Rg = reader.GetString("rg");
                    user.Profissao = reader.GetString("profissao");
                    user.Estado_civil = reader.GetString("estado_civil");
                    
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

        public bool Delete(string id)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM locatario WHERE id = " + id, connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }

        internal void Create(Classe.Locatario locatario)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO locatario(nome,cpf,rg,profissao,estado_civil VALUES (@nome,@cpf,@rg,@profissao,@estado_civil)", connection);
                comando.Parameters.Add(new MySqlParameter("nome", locatario.Nome));
                comando.Parameters.Add(new MySqlParameter("cpf", locatario.Cpf));
                comando.Parameters.Add(new MySqlParameter("rg", locatario.Rg));
                comando.Parameters.Add(new MySqlParameter("profissao", locatario.Profissao));
                comando.Parameters.Add(new MySqlParameter("estado_civil", locatario.Estado_civil));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return;
            }


        }

        public void Update(Classe.Locatario locatario)
        {
            connection.Open();
            var comand = new MySqlCommand($"UPDATE locatario SET nome= @nome,cpf= @cpf,rg= @rg profissao= @profissao, estado_civil= @estado_civil WHERE id = @id", connection);
            comand.Parameters.Add(new MySqlParameter("nome", locatario.Nome));
            comand.Parameters.Add(new MySqlParameter("cpf", locatario.Cpf));
            comand.Parameters.Add(new MySqlParameter("rg", locatario.Rg));
            comand.Parameters.Add(new MySqlParameter("profissao", locatario.Profissao));
            comand.Parameters.Add(new MySqlParameter("estado_civil", locatario.Estado_civil));
            comand.ExecuteNonQuery();
            connection.Close();
        }

        public List<Classe.Locatario> Verifica_Locatario(string nome, string cpf, string rg, string profissao, string estado_civil)
        {
            var locatario = new List<Classe.Locatario>();

            try
            {
                var comando = new MySqlCommand($"SELECT * FROM locatario WHERE (1=1)", connection);
                if (nome.Equals("") == false)
                {
                    comando.CommandText += $" AND nome like @nome";
                    comando.Parameters.Add(new MySqlParameter("nome", $"%{nome}%"));
                }
                if (cpf.Equals("") == false)
                {
                    comando.CommandText += $" AND cpf = @cpf";
                    comando.Parameters.Add(new MySqlParameter("cpf", cpf));
                }
                if (rg.Equals("") == false)
                {
                    comando.CommandText += $" AND rg= @rg";
                    comando.Parameters.Add(new MySqlParameter("rg", rg));

                    if (rg.Equals("") == false)
                    {
                        comando.CommandText += $" AND profissao= @profissao";
                        comando.Parameters.Add(new MySqlParameter("profissao", profissao));

                    }
                    if (rg.Equals("") == false)
                    {
                        comando.CommandText += $" AND estado_civil= @estado_civil";
                        comando.Parameters.Add(new MySqlParameter("estado_civil", estado_civil));

                    }
                   
                    var reader = comando.ExecuteReader();
                    while (reader.Read())
                    {
                        locatario.Add(new Classe.Locatario
                        {
                            Nome = reader.GetString("nome"),
                            Cpf = reader.GetString("cpf"),
                            Rg = reader.GetString("rg"),
                            Profissao = reader.GetString("profissao"),
                            Estado_civil = reader.GetString("estado_civil"),
                            


                        });
                    }

                }
                else
                {
                    locatario = null;
                }

            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }

            return locatario;
        }



        public bool Delete(int id)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM locatario WHERE id = " + id, connection);
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return false;
            }
            return true;
        }
    }
}
    
