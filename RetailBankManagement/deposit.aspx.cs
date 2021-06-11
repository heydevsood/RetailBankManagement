using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BANK.BO;
using BANK.BLL;
using System.Data;
namespace RetailBankManagement
{
    public partial class deposit : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'C')
            {
                Response.Redirect("invalid_access.aspx");
            }

            Account acc = new Account();
            acc = (Account)Session["account"];
            Label6.Text = acc.CustomerID.ToString();
            Label7.Text = acc.AccountID.ToString();
            Label8.Text = acc.AccountType.ToString();
            Label9.Text = acc.Balance.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("account_details.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int amount = Convert.ToInt32(TextBox1.Text);
                long accid = Convert.ToInt64(Label7.Text);
                int prev_balance = Convert.ToInt32(Label9.Text);
                int new_balance = prev_balance + amount;
                bll.deposit(amount, accid);
                Transaction t = new Transaction();
                t.AccountID = accid;
                t.Type = 'C';
                t.Amount = amount;
                t.BalanceBefore = prev_balance;
                t.BalanceAfter = new_balance;
                t.Time = DateTime.Now;
                bll.add_transaction(t);



                Label14.Text = Label6.Text;
                Label15.Text = Label7.Text;
                Label16.Text = Label8.Text;
                Label17.Text = new_balance.ToString();
                Label18.Text = "Amount deposited successfully";
            }
            catch(Exception ex)
            {
                Label18.Text = "Failed to Deposit" + ex.Message;
            }

        }
    }
}