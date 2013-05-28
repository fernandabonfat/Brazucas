using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.Adapters;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using Brazucas.Teste_de_Software;

namespace Brazucas
{
    [TestFixture] // classe abaixo eh de teste
    public class TesteBolao
    {
        [Test]
        public void TesteBolao1()
        {
            var User = new Usuario();
            var Pass = new Usuario();
            var BolaO = new Bolao();
            Assert.AreEqual("Thiago", User.Login);
            Assert.AreEqual("1234", Pass.Senha);
            Assert.AreEqual(1, BolaO.CodBolao);
        }

        [Test]
        public void TestaRodada()
        {
            var rodada = new Rodada();
            var inicio = new Rodada();
            var dataAtual = new Rodada();
            Boolean apostas = true; //Quer dizer que as apostas estão abertas

            Assert.AreEqual(1, rodada.rodada);
            if (inicio.Inicio > dataAtual.DataAtual)
            {
                apostas = true; //Quer dizer que as apostas estão abertas
            }
            else
            {
                apostas = false; //Quer dizer que as apostas estão fechadas
            }
            
        }
        [Test]
        public void TestaRanking()
        {
            var rodada = new Rodada();
            var user = new Usuario();
            var rank = new Ranking();
            var jogo = new Jogos();
            if (rodada.Status == false) // false indica que está fechada a rodada
            {
                rodada.jogos = jogo.Resultado;
                if (user.Login != null)
                {
                    for (int i = 1; rodada.existeRodada != false; i++ )
                    {
                        Console.WriteLine(rank.VisualizaRank[i]);
                    }
                }
            }
            for (int i = 1; rodada.existeRodada != false; i++)
            {
                if (user.Palpite == jogo.Resultado)
                {
                    user.Pontuacao += 20;
                }
                if (user.Palpite != jogo.Resultado && user.Palpite == (jogo.PlacarA + jogo.PlacarB))
                {
                    user.Pontuacao += 15;
                }
                if (user.Palpite != jogo.Resultado && (user.PalpiteVencedor == "timeA" || user.PalpiteVencedor == "timeB" || user.PalpiteVencedor == "Empate"))
                {
                    user.Pontuacao += 10;
                }
                if (user.Palpite != jogo.Resultado && (user.PalpiteVencedor != "timeA" && user.PalpiteVencedor != "timeB" && user.PalpiteVencedor != "Empate")))
                {
                    user.Pontuacao += 0;
                }
            }
            if (rodada.Status == false) // false indica que está fechada a rodada
            {
                if (user.Login != null)
                {
                    for (int i = 1; rodada.existeRodada != false;i++)
                    {
                        Console.WriteLine(rank.VisualizaPontuacao[i]);
                        if (i != 1)
                        { Console.WriteLine("A diferença de pontos entre esse usuário e o primeiro é de: " + (rank.VisualizaPontuacao[i] - rank.VisualizaPontuacao[1])); }

                    }
                }
            }
            
            
        }

    }
}