using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace b // Jo tamaro namespace 'b' hoy to j rakhjo, nakar tamaro namespace rakhjo
{
    public partial class brithday : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic
        }

        // AA FUNCTION UMERVA THI ERROR JATI RESHE
        protected void btnBook1_Click(object sender, EventArgs e)
        {
            // Jyare user 'EXPLORE' button par click kare tyare su thavu joie?
            // Udaharan tarike: tame biju page open kari shako
            Response.Redirect("subcat.aspx");
        }
    }
}