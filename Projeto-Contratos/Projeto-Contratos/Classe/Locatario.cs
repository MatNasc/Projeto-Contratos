using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Classe
{
    public class Locatario
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string cpf { get; set; }
        public string rg { get; set; }
        public string profissao { get; set; }
        public string estado_civil { get; set; }
    }
}