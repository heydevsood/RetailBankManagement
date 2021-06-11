using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BANK.BLL;
using BANK.BO;
namespace RetailBankManagement
{
    public partial class account_details : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        List<Account> account_cust = new List<Account>();
        List<Account> account_acc = new List<Account>();
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'C')
            {
                Response.Redirect("invalid_access.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" && TextBox2.Text == "" )
                {
                    Label15.Text = "Please Enter CustomerID/SSN or Account ID!";
                }
                else
                {
                    if (TextBox1.Text == "")
                    {
                        TextBox1.Text = "000000000";
                    }

                    if (TextBox2.Text == "")
                    {
                        TextBox2.Text = "000000000000";
                    }





                   

                    if (TextBox2.Text != "000000000000")
                    {
                        
                        long custid = Convert.ToInt64(TextBox1.Text);
                        long accid = Convert.ToInt64(TextBox2.Text);
                       
                        Account acc = new Account();
                        account_acc = bll.account_details(custid, accid);
                        acc = account_acc[0];
                        Label9.Text = acc.CustomerID.ToString();
                        Label10.Text = acc.AccountID.ToString();
                        Label11.Text = acc.AccountType.ToString();
                        Label12.Text = acc.Balance.ToString();
                        Label13.Text = acc.Status.ToString();
                    }

                   if (TextBox1.Text != "000000000")
                    {
                        
                        Account acc = new Account();
                        long custid = Convert.ToInt64(TextBox1.Text);
                        long accid = Convert.ToInt64(TextBox2.Text);

                        char type = Convert.ToChar(DropDownList1.SelectedValue);
                        account_cust = bll.account_details(custid, accid);
                        foreach (Account a in account_cust)
                        {
                            if (a.AccountType == type)
                            {
                                acc = a;
                            }
                        }

                        Label9.Text = acc.CustomerID.ToString();
                        Label10.Text = acc.AccountID.ToString();
                        Label11.Text = acc.AccountType.ToString();
                        Label12.Text = acc.Balance.ToString();
                        if(acc.Status == 1)
                        {
                            Label13.Text = "Active";
                        }

                        if (acc.Status == 0)
                        {
                            Label13.Text = "Inactive";
                        }


                    }





                }
            }
            catch (Exception ex)
            {
               
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text == "" && TextBox2.Text == "")
            {
                Label15.Text = "Please Enter CustomerID/SSN or Account ID!";
            }
            else
            {
                if (TextBox1.Text == "")
                {
                    TextBox1.Text = "000000000";
                }

                if (TextBox2.Text == "")
                {
                    TextBox2.Text = "000000000000";
                }

               
               
                if (TextBox1.Text != "" || TextBox1.Text != "000000000")
                {
                    List<char> type = new List<char>();
                   
                    long custid = Convert.ToInt64(TextBox1.Text);
                    long accid = Convert.ToInt64(TextBox2.Text);
                    account_cust = bll.account_details(custid, accid);
                    try
                    {
                        type.Add(account_cust[0].AccountType);
                        type.Add(account_cust[1].AccountType);
                        DropDownList1.DataSource = type;
                        DropDownList1.DataBind();

                    }
                    catch
                    {

                    }
                }

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "000000000";
            TextBox2.Text = "000000000000";
            Response.Redirect("account_details.aspx");
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {


                Account accdep = new Account();
                accdep.CustomerID = Convert.ToInt64(Label9.Text);
                accdep.AccountID = Convert.ToInt64(Label10.Text);
                accdep.AccountType = Convert.ToChar(Label11.Text);
                accdep.Balance = Convert.ToInt32(Label12.Text);
                accdep.Status = Convert.ToInt32(Label13.Text);
                if (accdep.Status == 0)
                {
                    Label16.Text = "Cannot Deposit in Inactive Account";
                }
                else
                {
                    Session["account"] = accdep;
                    Response.Redirect("deposit.aspx");
                }
            }
            catch(Exception ex)
            {
                Label16.Text = "Search for the Account Details first!";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                Account accdep = new Account();
                accdep.CustomerID = Convert.ToInt64(Label9.Text);
                accdep.AccountID = Convert.ToInt64(Label10.Text);
                accdep.AccountType = Convert.ToChar(Label11.Text);
                accdep.Balance = Convert.ToInt32(Label12.Text);
                accdep.Status = Convert.ToInt32(Label13.Text);
                if (accdep.Status == 0)
                {
                    Label16.Text = "Cannot Withdraw from Inactive Account";
                }
                else
                {
                    Session["account"] = accdep;
                    Response.Redirect("withdraw.aspx");
                }

            }
            catch(Exception ex)
            {
                Label16.Text = "Search for the Account Details first!";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {


                Account accdep = new Account();
                accdep.CustomerID = Convert.ToInt64(Label9.Text);
                accdep.AccountID = Convert.ToInt64(Label10.Text);
                accdep.AccountType = Convert.ToChar(Label11.Text);
                accdep.Balance = Convert.ToInt32(Label12.Text);
                accdep.Status = Convert.ToInt32(Label13.Text);
                if (accdep.Status == 0)
                {
                    Label16.Text = "Cannot Transfer from/in Inactive Account";
                }
                else
                {
                    Session["account"] = accdep;
                    Response.Redirect("transfer.aspx");
                }
            }
            catch(Exception ex)
            {
                Label16.Text = "Search for the Account Details first!";
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("cashier_home.aspx");
        }
    }
}