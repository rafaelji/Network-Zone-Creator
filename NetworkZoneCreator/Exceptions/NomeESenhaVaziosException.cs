using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetworkZoneCreator.Exceptions
{
    public class NomeESenhaVaziosException : Exception
    {
        private String Mensagem;

        public NomeESenhaVaziosException(String Mensagem) 
        {
            this.Mensagem = Mensagem;
        }

        public override string Message
        {
            get
            {
                return Mensagem;
            }
        }
    }
}
