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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SIGNUP_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers (Username,Password,Email,Utype) Values('" + txtuname.Text + "','" + txtpass.Text + "','" + txtemail.Text +"','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write(" < script > alert('REGISTRATION SUCCESSFULLY DONE'); </ script > ");
                    clr();
                    con.Close();
                    lblMsg.Text = "REGISTRATION SUCCESSFULLY DONE";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("~/SignIn(1).aspx");

            }
            else
            {
                Response.Write(" < script > alert('REGISTRATION FAILED'); </ script > ");
                lblMsg.Text = "ALL FIELDS ARE MANDATORY";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (txtuname.Text == "")
            {
                Response.Write("<script> alert ('Username not valid'); </script> ");
                txtuname.Focus();
                return false;
            }
            else if (txtpass.Text == "")
            {
                Response.Write("<script> alert ('Password not valid'); </script> ");
                txtpass.Focus();
                return false;
            }
            if (txtcpass.Text != txtpass.Text)
            {
                Response.Write("<script> alert ('enter correct password'); </script> ");
                txtcpass.Focus();
                return false;
            }
            if (txtemail.Text == "")
            {
                Response.Write("<script> alert ('Email not valid'); </script> ");
                txtemail.Focus();
                return false;
            }
            return true;
        }
        private void clr()
        {
            txtuname.Text = String.Empty;
            txtpass.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtcpass.Text = String.Empty;

        }
    }
}
    
