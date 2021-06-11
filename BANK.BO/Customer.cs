using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class Customer
    {
        private long ssn;

        public long  SSN
        {
            get { return ssn; }
            set { ssn = value; }
        }

        private long customerid;

        public long CustomerID
        {
            get { return customerid; }
            set { customerid = value; }
        }

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string add1;

        public string Add1
        {
            get { return add1; }
            set { add1 = value; }
        }

        private string add2;

        public string Add2
        {
            get { return add2; }
            set { add2 = value; }
        }

        private int cityid;

        public int CityID
        {
            get { return cityid; }
            set { cityid = value; }
        }

        private DateTime dob;

        public DateTime DOB
        {
            get { return dob; }
            set { dob = value; }
        }

        private int status;

        public int Status
        {
            get { return status; }
            set { status = value; }
        }


    }
}
