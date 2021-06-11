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
    public partial class create_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'E')
            {
                Response.Redirect("invalid_access.aspx");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                BankBLL bll = new BankBLL();
               
                Account a = new Account();
                a.CustomerID = Convert.ToInt64(TextBox1.Text);
                a.AccountType = Convert.ToChar(DropDownList1.SelectedValue);
                a.Balance = Convert.ToInt32(TextBox2.Text);
                long id = bll.create_account(a);
                Label4.Text = "Account created successfully and account number is " + id;
                Transaction t = new Transaction();
                t.AccountID = id;
                t.Type = 'C';
                t.Amount = a.Balance;
                t.BalanceBefore = 0;
                t.BalanceAfter = a.Balance;
                t.Time = DateTime.Now;
                bll.add_transaction(t);
            }
            catch(Exception ex)
            {
                Label4.Text = "Failed to create Account \n" + ex.Message;
            }
        }
    }
}