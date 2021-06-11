using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class State
    {
        private int stateid;

        public int StateID
        {
            get { return stateid; }
            set { stateid = value; }
        }

        private string statename;

        public string StateName
        {
            get { return statename; }
            set { statename = value; }
        }


    }
}
