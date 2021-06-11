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
    public partial class view_account : System.Web.UI.Page
    {
        BankBLL bll = new BankBLL();
        public void bind_all_acc()
        {
            DataSet ds = new DataSet();
            ds = bll.view_all_acc();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void bind_active_acc()
        {
            DataSet ds = new DataSet();
            ds = bll.view_active_acc();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void bind_inactive_acc()
        {
            DataSet ds = new DataSet();
            ds = bll.view_inactive_acc();
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

            bind_all_acc();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bind_all_acc();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int status = Convert.ToInt32(DropDownList1.SelectedValue);

            if (status == 1)
            {
                bind_active_acc();
            }

            if (status == 0)
            {
                bind_inactive_acc();
            }
        }
    }
}