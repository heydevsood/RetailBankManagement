using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class Account
    {
        private long customerid;

        public long CustomerID
        {
            get { return customerid; }
            set { customerid = value; }
        }

        private long accountid;

        public long AccountID
        {
            get { return accountid; }
            set { accountid = value; }
        }

        private char acctype;

        public char AccountType
        {
            get { return acctype; }
            set { acctype = value; }
        }

        private int balance;

        public int Balance
        {
            get { return balance; }
            set { balance = value; }
        }

        private int status;

        public int Status
        {
            get { return status; }
            set { status = value; }
        }





    }
}
