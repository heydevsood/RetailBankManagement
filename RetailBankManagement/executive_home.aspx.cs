using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailBankManagement
{
    public partial class executive_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if(login != 'E')
            {
                Response.Redirect("invalid_access.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("create_customer.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("create_account.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("update_customer.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete_customer.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete_account.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_customer.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_account.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("banklogin.aspx");
        }
    }
}