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
    public partial class updateCity : System.Web.UI.Page
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
                ddlCitylistUpdate.DataSource = dt;
                ddlCitylistUpdate.DataBind();
                ddlCitylistUpdate.DataTextField = "CityName";
                ddlCitylistUpdate.DataValueField = "CityId";
                ddlCitylistUpdate.DataBind();
            }
        }

        protected void ddlCitylistUpdate_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CityMaster where CityId='" + ddlCitylistUpdate.SelectedItem.Value + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtCityIdupdate.Text = (string)dr["CityId"].ToString();
                txtCityCodeupdate.Text = (string)dr["CityCode"].ToString();
                txtCityNameupdate.Text = (string)dr["CityName"].ToString();
               
            }
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("UpdateCityDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CityName", ddlCitylistUpdate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CityId", txtCityIdupdate.Text);
            cmd.Parameters.AddWithValue("@CityCode", txtCityCodeupdate.Text);

            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblsaved.Text = "Record Updated Succesfully";
                lblsaved.ForeColor = System.Drawing.Color.CornflowerBlue;
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lblsaved.Text = "Record Is Not Updated";
                lblsaved.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}