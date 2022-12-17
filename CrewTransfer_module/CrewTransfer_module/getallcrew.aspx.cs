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
    public partial class getallcrew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string com = "Select CrewId, CrewName from CrewMaster";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlAllCrews.DataSource = dt;
                ddlAllCrews.DataBind();
                ddlAllCrews.DataTextField = "CrewName";
                ddlAllCrews.DataValueField = "CrewId";
                ddlAllCrews.DataBind();
            }
        }

        protected void ddlAllCrews_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * FROM CrewMaster where CrewId='" + ddlAllCrews.SelectedItem.Value + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtgetcrewId.Text = (string)dr["CrewId"].ToString();
                txtgetcrewName.Text= (string)dr["CrewName"].ToString();
                txtgetcrewAddr.Text = (string)dr["Address"].ToString();
                txtgetContact.Text = (string)dr["ContactNo"].ToString();
                txtgetBloodGr.Text = (string)dr["BloodGr"].ToString();
                txtgetDOB.Text = (string)dr["DOB"].ToString();
                txtgetWorkingcity.Text = (string)dr["WorkingCity"].ToString();
                txtgetDOJoining.Text = (string)dr["DateOfJoining"].ToString();
                txtgetdesignation.Text = (string)dr["DesignationCode"].ToString();
                txtIsactive.Text= (string)dr["IsActive"].ToString();
            }
            con.Close();
        }

        protected void btngetbacktohome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}