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
    public partial class Inactivate_City : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CityId, CityName from CityMaster where IsActive =1";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlCitylistInActivate.DataSource = dt;
                ddlCitylistInActivate.DataBind();
                ddlCitylistInActivate.DataTextField = "CityName";
                ddlCitylistInActivate.DataValueField = "CityId";
                ddlCitylistInActivate.DataBind();
            }
        }

        protected void ddlCitylistInActivate_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CityMaster where CityId='" + ddlCitylistInActivate.SelectedItem.Value + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtCityIdInActive.Text = (string)dr["CityId"].ToString();
                txtCityNameInActive.Text = (string)dr["CityName"].ToString();

            }
            con.Close();
        }
        protected void btnInactivate_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("inactivateCityProc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityName", ddlCitylistInActivate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@IsActive",txtIsActive.Text);
            cmd.Parameters.AddWithValue("@CityId", txtCityIdInActive.Text);


            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblsaved.Text = "Crew Inactivated Successfully";
                lblsaved.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lblsaved.Text = "Failed to Inactivate Crew";
                lblsaved.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}