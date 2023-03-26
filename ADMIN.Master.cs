using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEEDLINK
{
    public partial class ADMIN : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LOGIN.aspx");
            Session["Username"] = null;
        }
    }
}