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
    public partial class ADDPRODUCTTYPE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindPrducttypeRepeater();
            }
        }

        private void BindPrducttypeRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                using(SqlCommand cmd = new SqlCommand("select * from tblproducttype",con))
                {
                    using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducttype.DataSource = dt;
                        rptrProducttype.DataBind();
                    }
                }
            }
        }

        protected void btnAddproducttype_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblproducttype(Name) Values('" + txtproducttype.Text+ "')", con);
                cmd.ExecuteNonQuery();

                Response.Write(" < script > alert('PRODUCTTYPE ADDED SUCCESSFULLY '); </ script > ");
                txtproducttype.Text = String.Empty; 
                con.Close();
                //lblMsg.Text = "REGISTRATION SUCCESSFULLY DONE";
               // lblMsg.ForeColor = System.Drawing.Color.Green;
               txtproducttype.Focus();

            }
        }
    }
}