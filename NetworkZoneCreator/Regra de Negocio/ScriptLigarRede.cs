using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetworkZoneCreator.Regra_de_Negocio
{
    public class ScriptLigarRede : IScript
    {
        public String Nome { get; private set; }
        public String Senha { get; private set; }

        public ScriptLigarRede(String nome, String senha) 
        {
            this.Nome = nome;
            this.Senha = senha;
        }

        public String Argumentos()
        {
            return Nome + " " + Senha;
        }

        public String NomeDoArquivo() 
        {
            return @"Scripts\LigarRede.bat";
        }
    }
}
