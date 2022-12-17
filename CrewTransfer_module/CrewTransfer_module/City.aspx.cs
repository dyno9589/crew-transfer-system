using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrewTransfer_module
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CityName from CityMaster";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlCitylist.DataSource = dt;
                ddlCitylist.DataBind();
                ddlCitylist.DataTextField = "CityName";
                ddlCitylist.DataBind();
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SaveCityDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityCode", txtCityCode.Text);
            cmd.Parameters.AddWithValue("@CityName", txtCityName.Text);
           
            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblsaved.Text = "Record Inserted Succesfully into the Database";
                lblsaved.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            else
            {
                lblsaved.Text = "Record Is Not Inserted Into the Database";
                lblsaved.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void ddlCitylist_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CityMaster ", con);
           
        }
    }
}