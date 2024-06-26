﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEEDLINK
{
    public partial class USERHOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Username"] != null)
            {
                btnlogout.Visible = true;
                btnlogin.Visible = false;
                lblSuccess.Text = "Login Success,Welcome" + Session["Username"].ToString();
            }
            else
            {
                btnlogout.Visible = false;
                btnlogin.Visible = true;
                // Response.Redirect("~/SignIn(1).aspx");
            }
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
                //pCount.InnerText = 0.ToString();
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        { 
            Session.Abandon();
            Session["Username"] = null;
            Response.Redirect("~/HOME.aspx");
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn(1).aspx");
        }
    }
}