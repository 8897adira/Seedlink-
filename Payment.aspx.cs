using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SEEDLINK
{
    public partial class Payment : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    //BindPriceData();
                    //genAutoNum();
                    //BindCartNumber();
                   // BindOrderProducts();
                }
                else
                {
                    Response.Redirect("~/Signin(1).aspx");
                }
            }
        }

        protected void btnPaytm_Click(object sender, EventArgs e)
        {

        }

        protected void btnCart2_ServerClick(object sender, EventArgs e)
        {

        }
    }
}