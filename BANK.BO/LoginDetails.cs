using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BANK.BO
{
   public class LoginDetails
    {
        private int loginid;

        public int LoginID
        {
            get { return loginid; }
            set { loginid = value; }
        }

        private string username;

        public string UserName
        {
            get { return username; }
            set { username = value; }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        private int roleid;

        public int RoleID
        {
            get { return roleid; }
            set { roleid = value; }
        }




    }
}
