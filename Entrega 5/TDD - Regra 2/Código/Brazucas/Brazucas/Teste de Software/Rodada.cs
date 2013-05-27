using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Brazucas.Teste_de_Software
{
     public class Rodada
    {
        public object rodada { get; set; }
        public DateTime Inicio { get; set; }
        Boolean Status { get; set; }
        public DateTime DataAtual { get; set; }

        public Rodada()
        {
            this.rodada = 1;
            this.DataAtual = DateTime.Now;
            
        }
    }
}
