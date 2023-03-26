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
    public partial class SignIn_1_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblUsers  where Username=@username and Password=@password", con);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {

                    string usertype;
                    usertype = dt.Rows[0][4].ToString().Trim();
                    if (usertype == "User")
                    {
                        Session["Username"] = txtUsername.Text;
                        Response.Redirect("~/USERHOME.aspx");
                    }
                    else if (usertype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        {
                            if (Request.QueryString["rurl"] != null)
                            {
                                if (Request.QueryString["rurl"] == "cart")
                                {
                                    Response.Redirect("~/CART.aspx");
                                }
                            }
                            else
                            {
                                Response.Redirect("~/ADMINHOME.aspx");
                            }
                        }

                    }
                    else
                    {
                        lblError.Text = " INVALID USERNAME AND PASSWORD";
                    }
                }

                if (dt.Rows.Count != 0)
                {

                    Session["USERID"] = dt.Rows[0]["uid"].ToString();
                }

                    clr();
                    con.Close();

                }



            }

            private void clr()
            {
                txtUsername.Text = String.Empty;
                txtPassword.Text = String.Empty;
            }


        }
    }

