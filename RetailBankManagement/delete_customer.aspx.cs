using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BANK.BLL;
using BANK.BO;
using BANK.DAL;

namespace RetailBankManagement
{
    public partial class delete_customer : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'E')
            {
                Response.Redirect("invalid_access.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" && TextBox2.Text == "")
                {
                    Label3.Text = "Please Enter either SSN or Customer ID";
                }
                else
                {
                    if(TextBox1.Text == "")
                    {
                        TextBox1.Text = "000000000";
                    }
                    if (TextBox2.Text == "")
                    {
                        TextBox2.Text = "000000000";
                    }
                    long ssn = Convert.ToInt64(TextBox1.Text);
                    long custid = Convert.ToInt64(TextBox2.Text);
                  
                    Customer c = new Customer();
                    c = bll.find_customer(ssn, custid);
                    Label7.Text = c.SSN.ToString();
                    Label8.Text = c.CustomerID.ToString();
                    Label9.Text = c.Name;
                    


                }

            }
            catch (Exception ex)
            {
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                List<int> status = new List<int>();
                long custid = Convert.ToInt64(Label8.Text);
                status = bll.find_account(custid);
                if(status.Contains(1))
                {
                    Label10.Text = "Cannot Delete Customer as there exists an Active Account";
                }
                else
                {
                    bll.delete_customer(custid);
                    Label10.Text = "Customer deleted successfully";
                }

            }
            catch(Exception ex)
            {
                Label10.Text = "Failed to Delete Customer " + ex.Message;
            }
        }
    }
}