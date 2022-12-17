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
    public partial class WebForm2 : System.Web.UI.Page
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
                txtcrewIdUpdate.Text = (string)dr["CrewId"].ToString();
                txtcrewAddrUpdate.Text = (string)dr["Address"].ToString();
                txtContactUpdate.Text = (string)dr["ContactNo"].ToString();
                txtBloodGrUpdate.Text = (string)dr["BloodGr"].ToString();
                txtDOBUpdate.Text = (string)dr["DOB"].ToString();
                txtWorkingcityUpdate.Text = (string)dr["WorkingCity"].ToString();
                txtDOJoiningUpdate.Text = (string)dr["DateOfJoining"].ToString();
                txtdesignationUpdate.Text = (string)dr["DesignationCode"].ToString();
                txtIsactiveUpdate.Text= (string)dr["IsActive"].ToString();
            }
                con.Close();
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("UpdateCrewDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CrewName", ddlCrewlist.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CrewId",txtcrewIdUpdate.Text); 
            cmd.Parameters.AddWithValue("@Address", txtcrewAddrUpdate.Text);
            cmd.Parameters.AddWithValue("@ContactNo", txtContactUpdate.Text);
            cmd.Parameters.AddWithValue("@BloodGr", txtBloodGrUpdate.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOBUpdate.Text);
            cmd.Parameters.AddWithValue("@WorkingCity", txtWorkingcityUpdate.Text);
            cmd.Parameters.AddWithValue("@DateOfJoining", txtDOJoiningUpdate.Text);
            cmd.Parameters.AddWithValue("@DesignationCode", txtdesignationUpdate.Text);
            cmd.Parameters.AddWithValue("@IsActive", txtIsactiveUpdate.Text);
            
            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblupdated.Text = "Record Updated Succesfully";
                lblupdated.ForeColor = System.Drawing.Color.CornflowerBlue;
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lblupdated.Text = "Record Is Not Updated";
                lblupdated.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}