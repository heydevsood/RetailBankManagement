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
    public partial class transfer : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
       
            
        List<Account> accounts = new List<Account>();
        Account source = new Account();
        Account target = new Account();
    
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'C')
            {
                Response.Redirect("invalid_access.aspx");
            }

            Account acc = new Account();
                acc = (Account)Session["account"];
                long custid = acc.CustomerID;
                accounts = bll.find_account_id(custid, 0);
                if (accounts.Count < 2)
                {
                    Label17.Text = "Customer does not have either a Savings or Current account!";
                }
                else
                {
                    List<int> status = new List<int>();
                    foreach (Account a in accounts)
                    {
                        status.Add(a.Status);
                    }
                    if (status.Contains(0))
                    {
                        Label17.Text = "Customer has an Inactive Account!";
                    }
                    else
                    {
                        string a1 = accounts[0].AccountID.ToString() + " Account Type: " + accounts[0].AccountType.ToString();
                        string a2 = accounts[1].AccountID.ToString() + " Account Type:" + accounts[1].AccountType.ToString();
                        List<string> a = new List<string>();
                        a.Add(a1);
                        a.Add(a2);
                    if (!IsPostBack)
                    {
                        DropDownList1.DataSource = a;
                        DropDownList1.DataBind();
                    }

                    }
                }

            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("account_details.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selected = DropDownList1.SelectedValue.ToString();
            string id = selected.Substring(0, 12);
            long sourceid = Convert.ToInt64(id);
            long targetid = 0;
            foreach(Account a in accounts)
            {
                if(a.AccountID != sourceid)
                {
                    targetid = a.AccountID;
                }
            }

            

            foreach (Account a in accounts)
            {
                if (a.AccountID == sourceid)
                {
                    source = a;
                }
                if (a.AccountID == targetid)
                {
                    target = a;
                }

            }

            Session["source"] = source;
            Session["target"] = target;
            Label9.Text = source.Balance.ToString();
            Label10.Text = target.Balance.ToString();
            Label6.Text = target.AccountID.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int amount = Convert.ToInt32(TextBox1.Text);
                Account sourceacc = new Account();
                Account targetacc = new Account();

                sourceacc = (Account)Session["source"];
                targetacc = (Account)Session["target"];
                int source_balance = sourceacc.Balance;
                int target_balance = targetacc.Balance;
                long sourceid = sourceacc.AccountID;
                long targetid = targetacc.AccountID;
                if (amount > source_balance)
                {
                    Label17.Text = "Transfer not allowed, please choose smaller amount";
                }
                else
                {
                    int new_source = source_balance - amount;
                    int new_target = target_balance + amount;
                    bll.tranfer(amount, sourceid, targetid);


                    Transaction debit = new Transaction();
                    debit.AccountID = sourceid;
                    debit.Amount = amount;
                    debit.BalanceAfter = new_source;
                    debit.BalanceBefore = Convert.ToInt32(Label9.Text);
                    debit.Type = 'D';
                    debit.Time = DateTime.Now;
                    bll.add_transaction(debit);

                    Transaction credit = new Transaction();
                    credit.AccountID = targetid;
                    credit.Amount = amount;
                    credit.BalanceAfter = new_target;
                    credit.BalanceBefore = Convert.ToInt32(Label10.Text);
                    credit.Type = 'C';
                    credit.Time = DateTime.Now;
                    bll.add_transaction(credit);

                    Label18.Text = sourceid.ToString();
                    Label19.Text = Label9.Text.ToString();
                    Label20.Text = new_source.ToString();

                    Label21.Text = targetid.ToString();
                    Label22.Text = Label10.Text.ToString();
                    Label23.Text = new_target.ToString();

                    Label17.Text = "Amount transfer completed successfully";
                }
            }
            catch(Exception ex)
            {
                Label17.Text = "Transaction Failed " + ex.Message;
            }
        }
    }
}