using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace b
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckLoginStatus();
            }
        }

        private void CheckLoginStatus()
        {
            if (Session["Username"] != null)
            {
                // User is logged in
                lblWelcomeMessage.Text = "Welcome, " + Session["Username"].ToString();
                btnLoginLogout.Text = "Logout";
                btnLoginLogout.CssClass = "logout-btn";
            }
            else
            {
                // User is not logged in
                lblWelcomeMessage.Text = "Welcome, Guest";
                btnLoginLogout.Text = "Login";
                btnLoginLogout.CssClass = "login-btn";
            }
        }

        protected void btnLoginLogout_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                // Logout
                Session.Clear();
                Session.Abandon();
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Go to Login page
                Response.Redirect("Login.aspx");
            }
        }
    }
}