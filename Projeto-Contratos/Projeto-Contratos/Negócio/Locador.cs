using MySqlConnector;
using Projeto_Contratos.Classe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Negócio
{
    public class Locador
    {
        private MySqlConnection connection;

        public object Nome { get; private set; }
        public object Cpf { get; private set; }
        public object Profissao { get; private set; }
        public object Estado_civil { get; private set; }
        public object Endereco { get; private set; }

        internal object LocadorPorId(string id)
        {
            throw new NotImplementedException();
        }

        public object Rg { get; private set; }

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
                    user.Nome = reader.GetString("nome");
                    user.Cpf = reader.GetString("cpf");
                    user.Rg = reader.GetString("rg");
                    user.Profissao = reader.GetString("profissao");
                    user.Estado_civil = reader.GetString("estado_civil");
                    user.Endereco = reader.GetString("endereco");
                }
                else
                {
                    user= null;
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

        internal bool Delete(string v)
        {
            throw new NotImplementedException();
        }

        internal void Create(Classe.Locador locador)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"INSERT INTO locador(nome,cpf,rg,profissao,estado_civil,endereco VALUES (@nome,@cpf,@rg,@profissao,@estado_civil,@endereco)", connection);
                comando.Parameters.Add(new MySqlParameter("nome", locador.Nome));
                comando.Parameters.Add(new MySqlParameter("cpf", locador.Cpf));
                comando.Parameters.Add(new MySqlParameter("rg", locador.Rg));
                comando.Parameters.Add(new MySqlParameter("profissao", locador.Profissao));
                comando.Parameters.Add(new MySqlParameter("estado_civil", locador.Estado_civil));
                comando.Parameters.Add(new MySqlParameter("endereco", locador.Endereco));
                comando.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                return ;
            }
            

        }

            internal void Update(Classe.Locador locador)
        {
            connection.Open();
            var comand = new MySqlCommand($"UPDATE locador SET nome= @nome,cpf= @cpf,rg= @rg profissao= @profissao, estado_civil= @estado_civil, endereco= @endereco WHERE id = @id", connection);
            comand.Parameters.Add(new MySqlParameter("nome", Nome));
            comand.Parameters.Add(new MySqlParameter("cpf", Cpf));
            comand.Parameters.Add(new MySqlParameter("rg", Rg));
            comand.Parameters.Add(new MySqlParameter("profissao", Profissao));
            comand.Parameters.Add(new MySqlParameter("estado_civil", Estado_civil));
            comand.Parameters.Add(new MySqlParameter("endereco", Endereco));
            comand.ExecuteNonQuery();
            connection.Close();
        }

        public List<Classe.Locador> Verifica_Locador(string nome, string cpf, string rg, string profissao, string estado_civil, string endereco)
        {
            var locador = new List<Classe.Locador>();

            try
            {
                var comando = new MySqlCommand($"SELECT * FROM locador WHERE (1=1)", connection);
                if (nome.Equals("") == false)
                {
                    comando.CommandText += $" AND nome like @nome";
                    comando.Parameters.Add(new MySqlParameter("nome", $"%{Nome}%"));
                }
                if (cpf.Equals("") == false)
                {
                    comando.CommandText += $" AND cpf = @cpf";
                    comando.Parameters.Add(new MySqlParameter("cpf", Cpf));
                }
                if (rg.Equals("") == false)
                {
                    comando.CommandText += $" AND rg= @rg";
                    comando.Parameters.Add(new MySqlParameter("rg", Rg));

                    if (rg.Equals("") == false)
                    {
                        comando.CommandText += $" AND profissao= @profissao";
                        comando.Parameters.Add(new MySqlParameter("profissao", Profissao));

                    }
                    if (rg.Equals("") == false)
                    {
                        comando.CommandText += $" AND estado_civil= @estado_civil";
                        comando.Parameters.Add(new MySqlParameter("estado_civil", Estado_civil));

                    }
                    if (rg.Equals("") == false)
                    {
                        comando.CommandText += $" AND endereco= @endereco";
                        comando.Parameters.Add(new MySqlParameter("endereco", Endereco));

                    }
                    var reader = comando.ExecuteReader();
                    while (reader.Read())
                    {
                        locador.Add(new Classe.Locador
                        {
                            Nome = reader.GetString("nome"),
                            Cpf = reader.GetString("cpf"),
                            Rg = reader.GetString("rg"),
                            Profissao = reader.GetString("profissao"),
                            Estado_civil = reader.GetString("estado_civil"),
                            Endereco = reader.GetString("endereco"),


                        });
                    }

                }
                else
                {
                    locador = null;
                }

            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }

            return locador;
        }

    

        public bool Delete(int id)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("DELETE FROM locador WHERE id = " + id, connection);
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
    
