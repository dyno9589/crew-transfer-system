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
    public partial class getallCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CityId, CityName from CityMaster";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlAllCities.DataSource = dt;
                ddlAllCities.DataBind();
                ddlAllCities.DataTextField = "CityName";
                ddlAllCities.DataValueField = "CityId";
                ddlAllCities.DataBind();
            }
        }

        protected void ddlAllCities_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CityMaster where CityId='" + ddlAllCities.SelectedItem.Value + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtgetCityId.Text = (string)dr["CityId"].ToString();
                txtgetCityCode.Text = (string)dr["CityCode"].ToString();
                txtgetCityName.Text = (string)dr["CityName"].ToString();
                
            }
            con.Close();
        }

        protected void btnbacktohome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}