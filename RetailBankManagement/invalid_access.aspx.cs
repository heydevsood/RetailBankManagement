using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RetailBankManagement
{
    public partial class invalid_access : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("banklogin.aspx");
        }
    }
}