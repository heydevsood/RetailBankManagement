using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BANK.BO;
using BANK.BLL;


namespace RetailBankManagement
{
    public partial class create_customer : System.Web.UI.Page
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
            }
          

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string state = DropDownList1.SelectedValue;
            bind_cities(state);
        }

   

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                Customer c = new Customer();
                c.SSN = Convert.ToInt32(TextBox1.Text);
                c.Name = TextBox2.Text;
                c.DOB = Convert.ToDateTime(Label8.Text);
                c.Add1 = TextBox3.Text;
                c.Add2 = TextBox4.Text;
                string city = DropDownList2.SelectedValue;
                int cityid = bll.cityid(city);
                c.CityID = cityid;
                long cust_id = 0;
                cust_id = bll.create_customer(c);
                if (cust_id != 0)
                {
                    Label9.Text = "Customer created successfully and customer id is " + cust_id;
                }
            }
            catch(Exception ex)
            {
                Label9.Text = "Failed to create new customer!!! \n " + ex.Message;
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = Convert.ToDateTime(TextBox5.Text);

            Label8.Text = dt.ToString("dd-MMM-yyyy");
        }
    }
}