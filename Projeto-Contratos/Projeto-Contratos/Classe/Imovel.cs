using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Classe
{
    public class Imovel
    {
        public int id { get; set; }
        public string rua { get; set; }
        public int numero { get; set; }
        public string n_agua { get; set; }
        public string n_luz { get; set; }
        public string cidade { get; set; }
        public string bairro { get; set; }
    }
}