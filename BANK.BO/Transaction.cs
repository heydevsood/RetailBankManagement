using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class Transaction
    {
        private long transactionid;

        public long TransactionID
        {
            get { return transactionid; }
            set { transactionid = value; }
        }

        private long accountid;

        public long AccountID
        {
            get { return accountid; }
            set { accountid = value; }
        }

        private char type;

        public char Type
        {
            get { return type; }
            set { type = value; }
        }

        private int amount;

        public int Amount
        {
            get { return amount; }
            set { amount = value; }
        }

        private int balancebef;

        public int BalanceBefore
        {
            get { return balancebef; }
            set { balancebef = value; }
        }

        private int balanceaft;

        public int BalanceAfter
        {
            get { return balanceaft; }
            set { balanceaft = value; }
        }

        private DateTime time;

        public DateTime Time
        {
            get { return time; }
            set { time = value; }
        }






    }
}
