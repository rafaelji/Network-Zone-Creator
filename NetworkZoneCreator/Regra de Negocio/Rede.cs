using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetworkZoneCreator.Regra_de_Negocio
{
    public class Rede
    {
        ScriptLigarRede configuracao;
        ScriptAbrirCentralDeCompartilhamento acdc;
        ScriptDesligarRede desligar;

        /// <summary>
        /// <para>Método para iniciar uma nova rede hospedada.</para>
        /// <para>Passa os argumentos recebidos para o método private executaScript quando necessário.</para>
        /// </summary>
        /// <param name="nome">SSID para configurar a rede</param>
        /// <param name="senha">Senha para configurar a rede</param>
        public void iniciarRede(String nome, String senha) 
        {
            executaScript(configuracao = new ScriptLigarRede(nome,senha));
            executaScript(acdc = new ScriptAbrirCentralDeCompartilhamento());
        }

        /// <summary>
        /// <para>Método que desliga a rede hospedada</para>
        /// </summary>
        public void desligarRede() 
        {
            executaScript(desligar = new ScriptDesligarRede());
        }

        /// <summary>
        /// <para>Método que executa scripts que implementem a interface IScript</para>
        /// </summary>
        /// <param name="script">Uma classe de Script que implemente a interface IScript</param>
        private void executaScript(IScript script)
        {
            ProcessStartInfo processo = new ProcessStartInfo();
            processo.FileName = script.NomeDoArquivo();
            processo.WindowStyle = ProcessWindowStyle.Hidden;
            processo.Arguments = script.Argumentos();
            Process.Start(processo);
        }
    }
}
