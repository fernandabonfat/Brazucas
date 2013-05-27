using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Brazucas.Teste_de_Software
{
    
    public class Usuario
    {
        public object Login { get; set; }
        public object Senha { get; set; }
        public object UserApostas { get; set; }

        public Usuario()
        {
            this.Login = "Thiago";
            this.Senha = "1234";
        }
    }
}