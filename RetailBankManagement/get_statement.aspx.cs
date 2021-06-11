using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BANK.BO;
using BANK.BLL;

namespace RetailBankManagement
{
    public partial class get_statement : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'C')
            {
                Response.Redirect("invalid_access.aspx");
            }

            if (!IsPostBack)
            {
                DropDownList1.Visible = false;
                Label2.Visible = false;

                Label3.Visible = false;
                Label4.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked == true)
            {
                DropDownList1.Visible = true;
                Label2.Visible = true;

                Label3.Visible = false;
                Label4.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked == true)
            {
                DropDownList1.Visible = false;
                Label2.Visible = false;

                Label3.Visible = true;
                Label4.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                long accid = Convert.ToInt64(TextBox1.Text);
                if (RadioButton1.Checked == true)
                {
                    int n = Convert.ToInt32(DropDownList1.SelectedValue);

                    DataSet ds = new DataSet();
                    ds = bll.statement_by_n(accid, n);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }

                if (RadioButton2.Checked == true)
                {
                    DateTime start = new DateTime();
                    DateTime end = new DateTime();
                    start = Convert.ToDateTime(TextBox2.Text);
                    end = Convert.ToDateTime(TextBox3.Text);
                    DataSet ds = new DataSet();
                    ds = bll.statement_by_duration(accid, start, end);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
            catch(Exception ex)
            {
                Label7.Text="Please enter valid Account ID" + ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cashier_home.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = Convert.ToDateTime(TextBox2.Text);
            Label5.Text = dt.ToString("dd-MMM-yyyy hh:mm");
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = Convert.ToDateTime(TextBox3.Text);
            Label6.Text = dt.ToString("dd-MMM-yyyy hh:mm");
            
        }
    }
}