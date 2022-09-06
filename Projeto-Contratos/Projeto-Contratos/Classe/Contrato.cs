using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Contratos.Classe
{
    public class Contrato
    {
        public int id { get; set; }
        public int id_locador { get; set; }
        public int id_locatario { get; set; }
        public int id_imovel { get; set; }
        public int n_contrato { get; set; }
        public string data_inicio { get; set; }
        public string data_fim { get; set; }
    }
}