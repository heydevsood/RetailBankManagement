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
    public partial class delete_account : System.Web.UI.Page
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
            
            if(TextBox1.Text == "" && TextBox2.Text == "")
            {
                Label3.Text = "Please Enter either Customer id or Account id";
            }
            else
            {
                if(TextBox1.Text == "")
                {
                    TextBox1.Text = "000000000";
                    
                }
                if (TextBox2.Text == "")
                {
                    TextBox2.Text = "000000000000";

                }
                long custid = Convert.ToInt64(TextBox1.Text);
                long accid = Convert.ToInt64(TextBox2.Text);

                List<Account> accounts = new List<Account>();
                accounts = bll.find_account_id(custid, accid);
                GridView1.DataSource = accounts;
                GridView1.DataBind();


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                long accid = Convert.ToInt64(Label5.Text);
                bll.delete_account(accid);
                Label4.Text = "Account deleted successfully";
            }
            catch (Exception ex)
            {
                Label4.Text = "Failed to Delete Account " + ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = GridView1.SelectedRow.Cells[2].Text;
           
        }
    }
}