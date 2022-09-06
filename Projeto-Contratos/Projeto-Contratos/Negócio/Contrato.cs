using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using MySqlConnector;

namespace Projeto_Contratos.Negócio
{
    public class Contrato
    {
        private MySqlConnection connection;
        public Contrato()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }
    }
}