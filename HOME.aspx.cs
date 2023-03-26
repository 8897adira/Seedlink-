using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEEDLINK
{
    public partial class HOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success,Welcome" + Session["Username"].ToString();
               
                btnSignUp.Visible = false;
                btnSignIn.Visible = false;
                btnlogout.Visible = true;
            }
            else
            {
                btnSignIn.Visible = true;
                btnSignUp.Visible = true;
                btnlogout.Visible = false;
                //Response.Redirect("~/SignIn(1).aspx");
                //Response.Redirect("~/HOME.aspx");
            }
        }

        private void BindCartNumber()
        {
            if(Request.Cookies["CartPID"]!=null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string [] ProductArray= CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                //pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                //pCount.InnerText = 0.ToString();
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("~/HOME.aspx");
           
        }
    }
}