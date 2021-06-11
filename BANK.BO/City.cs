using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class City
    {
        private int cityid;

        public int CityID
        {
            get { return cityid; }
            set { cityid = value; }
        }
        private string cityname;

        public string CityName
        {
            get { return cityname; }
            set { cityname = value; }
        }

        private int stateid;

        public int StateID
        {
            get { return stateid; }
            set { stateid = value; }
        }



    }
}
