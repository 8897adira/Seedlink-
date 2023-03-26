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
    public partial class ViewProducts : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["SEEDLINKdb"].ConnectionString;
        

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["PID"]!=null)
            {
                if(!IsPostBack)
                {
                    BindProductDetails();
                    BindProductImage();
                    BindCartNumber();
                }
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }

        private void BindCartNumber()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using SqlConnection con = new SqlConnection(CS);
                SqlCommand cmd = new SqlCommand("procBindCartNumberz", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@UserID", UserIDD);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                        //CartBadge.InnerText = CartQuantity;
                    }
                    else
                    {
                        //_ = CartBadge.InnerText == 0.ToString();
                    }
                }
            }
        }

        private void BindProductImage()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procBindProductImages", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@PID", PID);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrImage.DataSource = dt;
                    rptrImage.DataBind();
                }
            }
        }

        protected string GetActiveImgClass(int ItemIndex)
        {
            if(ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }

        private void BindProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procBindProductDetails", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@PID", PID);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProductDetails.DataSource = dt;
                    rptrProductDetails.DataBind();
                    Session["CartPID"] = Convert.ToInt32(dt.Rows[0]["PID"].ToString());
                    Session["myPName"] = dt.Rows[0]["PName"].ToString();
                    Session["myPPrice"] = dt.Rows[0]["PPrice"].ToString();
                    Session["myPSelPrice"] = dt.Rows[0]["PSelPrice"].ToString();
                }

            }
        }

        

        

        protected void Btnaddtocart_Click1(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Int32 UserID = Convert.ToInt32(Session["USERID"].ToString());
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                using SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("procIsProductExistInCart", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Parameters.AddWithValue("@PID", PID);
                using SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Int32 updateQty = Convert.ToInt32(dt.Rows[0]["Qty"].ToString());
                    SqlCommand myCmd = new SqlCommand("procUpdateCart", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    myCmd.Parameters.AddWithValue("@Quantity", updateQty + 1);
                    myCmd.Parameters.AddWithValue("@CartPID", PID);
                    myCmd.Parameters.AddWithValue("@UserID", UserID);
                    Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                    BindCartNumber();
                    divSuccess.Visible = true;
                }
                else
                {
                    SqlCommand myCmd = new SqlCommand("procInsertCart", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    myCmd.Parameters.AddWithValue("@UID", UserID);
                    myCmd.Parameters.AddWithValue("@PID", Session["CartPID"].ToString());
                    myCmd.Parameters.AddWithValue("@PName", Session["myPName"].ToString());
                    myCmd.Parameters.AddWithValue("@PPrice", Session["myPPrice"].ToString());
                    myCmd.Parameters.AddWithValue("@PSelPrice", Session["myPSelPrice"].ToString());
                    myCmd.Parameters.AddWithValue("@Qty", Session["myQty"].ToString());
                    Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                    con.Close();
                    BindCartNumber();
                    divSuccess.Visible = true;
                }
            }
            else
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                Response.Redirect("~/Signin(1).aspx?rurl=" + PID);
            }

        }

        protected void btnCart2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart.aspx");
        }
    }
}