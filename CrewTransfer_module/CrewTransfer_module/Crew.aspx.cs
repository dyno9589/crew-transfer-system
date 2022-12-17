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
    public partial class Crew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

               
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CityCode, CityName from CityMaster where IsActive =1";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlWorkingCities.DataSource = dt;
                ddlWorkingCities.DataBind();
                ddlWorkingCities.DataTextField = "CityName";
                ddlWorkingCities.DataValueField = "CityName";
                ddlWorkingCities.DataBind();
            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
             string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                SqlCommand cmd = new SqlCommand("SaveCrewDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CrewId", TxtCrewId.Text);
                cmd.Parameters.AddWithValue("@CrewName", TxtCrewName.Text);
                cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
                cmd.Parameters.AddWithValue("@ContactNo", TxtContact.Text);
                cmd.Parameters.AddWithValue("@BloodGr", ddlBloodGroup.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", TxtDOB.Text);
                cmd.Parameters.AddWithValue("@WorkingCity", ddlWorkingCities.SelectedValue);
                cmd.Parameters.AddWithValue("@DateOfJoining", TxtDOJoining.Text);
                cmd.Parameters.AddWithValue("@DesignationCode", ddlDesignationCode.SelectedValue);
                cmd.Parameters.AddWithValue("@Username", txtcreateusername.Text);
                cmd.Parameters.AddWithValue("@Password", txtcreatepass.Text);

                con.Open(); ;
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblsaved.Text = "Record Inserted Succesfully into the Database";
                    lblsaved.ForeColor = System.Drawing.Color.Green;
                    
                }
                else
                {
                    lblsaved.Text = "Record Is Not Inserted into the Database";
                    lblsaved.ForeColor = System.Drawing.Color.Red;
                }
                con.Close();
            }
            catch(Exception ex)
            {
                lblsaved.Text = ex.Message;

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}