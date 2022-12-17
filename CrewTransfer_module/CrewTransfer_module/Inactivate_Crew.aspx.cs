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
    public partial class Inactivate_Crew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CrewId, CrewName from CrewMaster where IsActive =1";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlCrewlist.DataSource = dt;
                ddlCrewlist.DataBind();
                ddlCrewlist.DataTextField = "CrewName";
                ddlCrewlist.DataValueField = "CrewId";
                ddlCrewlist.DataBind();
            }
        }

        protected void ddlCrewlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CrewMaster where CrewId='" + ddlCrewlist.SelectedItem.Value + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtCrewId.Text = (string)dr["CrewId"].ToString();
                txtCrewName.Text = (string)dr["CrewName"].ToString();
                
            }
            con.Close();
        }

        protected void btnInactivate_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("inactivateProc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CrewName", ddlCrewlist.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@IsActive", txtIsacivate.Text);
            cmd.Parameters.AddWithValue("@CrewId", txtCrewId.Text);
            
           
            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblInactivated.Text = "Crew Inactivated Successfully";
                lblInactivated.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lblInactivated.Text = "Failed to Inactivate Crew";
                lblInactivated.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }

        protected void btncancelInactivate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}