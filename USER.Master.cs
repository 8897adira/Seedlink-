using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SEEDLINK
{
    public partial class USER : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success,Welcome" + Session["Username"].ToString();
                btnlogout.Visible = true;
                btnlogin.Visible = false;
            }
            else
            {
                btnlogout.Visible = false;
                btnlogin.Visible = true;
                //Response.Redirect("~/SignIn(1).aspx");
                Response.Redirect("~/HOME.aspx");
            }
        }

        

        

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/SignIn(1).aspx");
        }

        private void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                //pCount.InnerText = ProductCount.ToString();
            }
            else
            {
               // pCount.InnerText = 0.ToString();
            }
        }

        protected void btnlogout_Click1(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/HOME.aspx");
           
        }

        

        
    }
}