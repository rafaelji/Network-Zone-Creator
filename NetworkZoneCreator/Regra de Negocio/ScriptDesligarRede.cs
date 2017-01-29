using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetworkZoneCreator.Regra_de_Negocio
{
    public class ScriptDesligarRede : IScript
    {
        public String Argumentos()
        {
            return "";
        }

        public String NomeDoArquivo()
        {
            return @"Scripts\DesligarRede.bat";
        }
    }
}
