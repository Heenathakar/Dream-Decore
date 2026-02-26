using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace b
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user is logged in
            if (Session["UserID"] == null)
            {
                // ✅ FIX: Check if already on Login page to prevent loop
                if (!Request.Url.AbsolutePath.ToLower().Contains("login.aspx"))
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}