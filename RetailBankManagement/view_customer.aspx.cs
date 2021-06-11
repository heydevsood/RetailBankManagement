using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BANK.BLL;
using BANK.BO;
using System.Data;

namespace RetailBankManagement
{
    public partial class view_customer : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        public void bind_all_cust()
        {
            DataSet ds = new DataSet();
            ds = bll.view_all_cust();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void bind_active_cust()
        {
            DataSet ds = new DataSet();
            ds = bll.view_active_cust();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void bind_inactive_cust()
        {
            DataSet ds = new DataSet();
            ds = bll.view_inactive_cust();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'E')
            {
                Response.Redirect("invalid_access.aspx");
            }

            bind_all_cust();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bind_all_cust();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int status = Convert.ToInt32(DropDownList1.SelectedValue);
            if(status == 1)
            {
                bind_active_cust();
            }

            if(status == 0)
            {
                bind_inactive_cust();
            }
        }
    }
}