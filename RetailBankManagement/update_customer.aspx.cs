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
    public partial class update_customer : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();

        public void bind_states()
        {
            DropDownList1.DataSource = bll.states();
            DropDownList1.DataBind();
        }

        public void bind_cities(string s)
        {
            DropDownList2.DataSource = bll.cities(s);
            DropDownList2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'E')
            {
                Response.Redirect("invalid_access.aspx");
            }

            if (!IsPostBack)
            {
                bind_states();
                Label13.Visible = false;
                Label14.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                Label16.Visible = false;
                Label17.Visible = false;
                Label12.Visible = false;
                DropDownList1.Visible = false;
                DropDownList2.Visible = false;
                TextBox6.Visible = false;
                Button2.Visible = false;

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
                    if (TextBox1.Text == "")
                    {
                        TextBox1.Text = "000000000";
                    }
                    if (TextBox2.Text == "")
                    {
                        TextBox2.Text = "000000000";
                    }
                    long ssn = Convert.ToInt64(TextBox1.Text);
                    long custid = Convert.ToInt64(TextBox2.Text);
                    Label13.Visible = true;
                    Label14.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    TextBox5.Visible = true;
                    Label16.Visible = true;
                    Label17.Visible = true;
                    Label12.Visible = true;
                    DropDownList1.Visible = true;
                    DropDownList2.Visible = true;
                    TextBox6.Visible = true;
                    Button2.Visible = true;
                    Customer c = new Customer();
                    c = bll.find_customer(ssn, custid);
                    Label13.Text = c.SSN.ToString();
                    Label14.Text = c.CustomerID.ToString();
                    TextBox3.Text = c.Name;
                    TextBox4.Text = c.Add1;
                    TextBox5.Text = c.Add2;
                    Label17.Text = c.CityID.ToString();
                    Label12.Text = c.DOB.ToString("dd-MMM-yyyy");


                }

            }
            catch(Exception ex)
            {

            }
            
        }

        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string state = DropDownList1.SelectedValue;
            bind_cities(state);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Customer c = new Customer();
                c.SSN = Convert.ToInt64(Label13.Text);
                c.CustomerID = Convert.ToInt64(Label14.Text);
                c.Name = TextBox3.Text;
                c.Add1 = TextBox4.Text;
                c.Add2 = TextBox5.Text;
                c.DOB = Convert.ToDateTime(Label12.Text);
                
              
                c.CityID = Convert.ToInt32(Label17.Text);
               
                bll.update_customer(c);
                Label15.Text = "Customer details updated successfully";
                
            }
            catch (Exception ex)
            {
                Label15.Text = "Failed to Update customer!!! \n " + ex.Message;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string city = DropDownList2.SelectedValue;

            int cityid = bll.cityid(city);
            Label17.Text = cityid.ToString();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = Convert.ToDateTime(TextBox6.Text);
            Label12.Text = dt.ToString("dd-MMM-yyyy");
        }
    }
}