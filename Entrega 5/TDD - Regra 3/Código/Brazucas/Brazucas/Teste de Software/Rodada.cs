using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Brazucas.Teste_de_Software
{
     public class Rodada
    {
        public int rodada { get; set; }
        public DateTime Inicio { get; set; }
        public Boolean Status { get; set; }
        public DateTime DataAtual { get; set; }
        public object jogos { get; set; }
        public int cont = 0;
        public Boolean existeRodada = false;
        public Rodada()
        {
            this.rodada = 1;
            this.DataAtual = DateTime.Now;
        }
    }
}
