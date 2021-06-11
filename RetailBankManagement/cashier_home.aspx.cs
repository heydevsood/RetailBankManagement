using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailBankManagement
{
    public partial class cashier_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            char login = Convert.ToChar(Session["login"]);
            if (login != 'C')
            {
                Response.Redirect("invalid_access.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("account_details.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("get_statement.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("banklogin.aspx");
        }
    }
}