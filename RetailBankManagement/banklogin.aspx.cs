using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BANK.BLL;
using BANK.BO;

namespace RetailBankManagement
{
    public partial class banklogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BankBLL bll = new BankBLL();
            LoginDetails l = new LoginDetails();
            l.UserName = TextBox1.Text;
            l.Password = TextBox2.Text;
            int role = bll.LogIn(l);
            if(role == 1)
            {
                Session["login"] = "E";
                Response.Redirect("executive_home.aspx");
            }
            else if(role == 2)
            {
                Session["login"] = "C";
                Response.Redirect("cashier_home.aspx");
            }
            else
            {
                Label3.Text = "*Invalid Credentials. Try Again!";
            }
        }
    }
}