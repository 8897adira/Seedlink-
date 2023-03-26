using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

namespace SEEDLINK
{
    public partial class Add_Products : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducttype();
                BindCategory();


                ddlsubcategory.Enabled = false;
            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
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

        private void BindProducttype()
        {
             using (SqlConnection con = new SqlConnection(CS))
             {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select* from tblproducttype  ", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                    ddlproducttype.DataSource = dt;
                    ddlproducttype.DataTextField = "Name";
                    ddlproducttype.DataValueField = "producttypeID";
                    ddlproducttype.DataBind();
                    ddlproducttype.Items.Insert(0, new ListItem("-Select-", "0"));


                    }
             }
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SP_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName" , txtproductname.Text);
                cmd.Parameters.AddWithValue("@PPrice" , txtprice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtsellingprice.Text);
                cmd.Parameters.AddWithValue("@PProducttypeID", ddlproducttype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlcategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PDescription", txtdescription.Text);
                cmd.Parameters.AddWithValue("@PProductDetails", txtpdetails.Text);
                cmd.Parameters.AddWithValue("@PCare", txtcare.Text);


                if (chfd.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@Freedelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Freedelivery", 0.ToString());
                }
                if (chReturn.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@ReturnPolicy", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ReturnPolicy", 0.ToString());
                }
                if (chCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

                //insert size quantity

                for (int i = 0; i < cblSize.Items.Count; i++)
                {
                    if (cblSize.Items[i].Selected == true)
                    {
                        Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
                        int Quantity = Convert.ToInt32(txtquantity.Text);

                        SqlCommand cmd2 = new SqlCommand("Insert into tblproductsizequantity Values ('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                        cmd2.ExecuteNonQuery();
                    }
                }
                // INSERT AND UPLOAD IMAGES

                if(fuimg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;

                    if(!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fuimg01.PostedFile.FileName);
                    fuimg01.SaveAs( SavePath + "\\" + txtproductname.Text.ToString().Trim() + "01" + Extention);

                    SqlCommand cmd3 = new SqlCommand("Insert into tblproductimages values ('" + PID + "','" + txtproductname.Text.ToString().Trim() + "01" + "','" + Extention + "') ",con);
                    cmd3.ExecuteNonQuery();
                }

                // 2nd INSERT AND UPLOAD IMAGES

                if (fuimg02.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;

                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fuimg02.PostedFile.FileName);
                    fuimg02.SaveAs( SavePath + "\\" + txtproductname.Text.ToString().Trim() + "02" + Extention);

                    SqlCommand cmd4 = new SqlCommand("Insert into tblproductimages values ('" + PID + "','" + txtproductname.Text.ToString().Trim() + "02" + "','" + Extention + "') ",con);
                    cmd4.ExecuteNonQuery();
                }

                // 3rd INSERT AND UPLOAD IMAGES

                if (fuimg03.HasFile)
                {
                    string SavePath = Server.MapPath("~/images/ProductImages/") + PID;

                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fuimg03.PostedFile.FileName);
                    fuimg03.SaveAs( SavePath + "\\" + txtproductname.Text.ToString().Trim() + "03" + Extention);

                    SqlCommand cmd5 = new SqlCommand("Insert into tblproductimages values('" + PID + "','" + txtproductname.Text.ToString().Trim() + "03" + "','" + Extention + "') ",con);
                    cmd5.ExecuteNonQuery();
                }
            }
        }

        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlcategory.SelectedIndex != 0)
            {
                ddlsubcategory.Enabled = true;
            }
            else
            {
                ddlsubcategory.Enabled = false;
            }
            int MainCategoryID = Convert.ToInt32(ddlcategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select* from tblsubcategory where MainCatID = '" + ddlcategory.SelectedItem.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlsubcategory.DataSource = dt;
                    ddlsubcategory.DataTextField = "SubCatName";
                    ddlsubcategory.DataValueField = "SubCatID";
                    ddlsubcategory.DataBind();
                    ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));


                }
            }
        }

        protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblsizes where producttypeID = '" + ddlproducttype.SelectedItem.Value + "' and categoryID = '" + ddlcategory.SelectedItem.Value + "' and subcategoryID = '" + ddlsubcategory.SelectedItem.Value + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    cblSize.DataSource = dt;
                    cblSize.DataTextField = "SizeName";
                    cblSize.DataValueField = "SizeID";
                    cblSize.DataBind();
                    


                }
            }
        }
    }



}