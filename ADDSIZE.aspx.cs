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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindProducttype();
                BindMainCategory();
                Bindsizerepeater();
            }
              
                 
        }

        private void Bindsizerepeater()
        {
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.* from tblsizes A inner join tblcategory B on B.CatID = a.categoryID inner join tblproducttype C on C.producttypeID = A.producttypeID inner join tblsubcategory D on D.SubCatID= A.subcategoryID               ", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rptrSize.DataSource = dt;
                            rptrSize.DataBind();
                        }
                    }
                }
            }
        }

        private void BindProducttype()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select* from tblproducttype  ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlproductype.DataSource = dt;
                    ddlproductype.DataTextField = "Name";
                    ddlproductype.DataValueField = "producttypeID";
                    ddlproductype.DataBind();
                    ddlproductype.Items.Insert(0, new ListItem("-Select-", "0"));


                }
            }
        }

        private void BindMainCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select* from tblcategory  ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlcategory.DataSource = dt;
                    ddlcategory.DataTextField = "CatName";
                    ddlcategory.DataValueField = "CatID";
                    ddlcategory.DataBind();
                    ddlcategory.Items.Insert(0, new ListItem("-Select-", "0"));


                }
            }
        }

        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert.ToInt32(ddlcategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select* from tblsubcategory where MainCatID = '" + ddlcategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count != 0)
                {
                   ddlSubcategory.DataSource = dt;
                    ddlSubcategory.DataTextField= "SubCatName";
                    ddlSubcategory.DataValueField = "SubCatID";
                    ddlSubcategory.DataBind();
                    ddlSubcategory.Items.Insert(0, new ListItem("-Select-", "0"));


                }
            }
        }

        

        protected void btnSIze_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblsizes(SizeName,producttypeID,categoryID,subcategoryID) Values('" + txtSize.Text + "','" + ddlproductype.SelectedItem.Value + "','" + ddlcategory.SelectedItem.Value + "','" + ddlSubcategory.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write(" < script > alert('SUBCATEGORY ADDED SUCCESSFULLY '); </ script > ");
                txtSize.Text = String.Empty;
                con.Close();

                ddlproductype.ClearSelection();
                ddlproductype.Items.FindByValue("0").Selected = true;

                ddlcategory.ClearSelection();
                ddlcategory.Items.FindByValue("0").Selected = true;

                ddlSubcategory.ClearSelection();
                ddlSubcategory.Items.FindByValue("0").Selected = true;

            }
            Bindsizerepeater();
        }
    }
}