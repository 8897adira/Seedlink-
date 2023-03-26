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
    public partial class ADDCATEGORY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bindcategoryrepeater();
            }

        }

        private void Bindcategoryrepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblcategory", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrcategory.DataSource = dt;
                        rptrcategory.DataBind();
                    }
                }
            }
        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblcategory(CatName) Values('" + txtcategory.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write(" < script > alert('CATEGORY ADDED SUCCESSFULLY '); </ script > ");
                txtcategory.Text = String.Empty;
                con.Close();
                //lblMsg.Text = "REGISTRATION SUCCESSFULLY DONE";
                // lblMsg.ForeColor = System.Drawing.Color.Green;
                txtcategory.Focus();

            }
        }
    }
}