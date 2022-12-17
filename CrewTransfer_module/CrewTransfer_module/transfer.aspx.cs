using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Data.SqlClient.SqlConnection;


namespace CrewTransfer_module
{
    public partial class transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Your binding code here ...
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);


                 SqlCommand cmd = new SqlCommand("getworkingcity", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@CrewId", txtCrewId.Text);
                

                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                    {
                        txtCrewId.Text = (string)sdr["CrewId"].ToString();
                        txtCurrentWorkingCity.Text = (string)sdr["CityName"].ToString();
                    }
                    con.Close();


                    txtCrewId.Text = Session["CrewId"].ToString();
                    txtCurrentWorkingCity.Text = Session["WorkingCity"].ToString();



                    //   cmd.Connection = con;
                    //   con.Open();

                    //   SqlDataReader sdr = cmd.ExecuteReader();
                    //   while (sdr.Read())
                    //   {
                    //       Session["CrewId"] = Convert.ToString(sdr["CrewId"]);
                    //       txtCurrentWorkingCity.Text = (string)sdr["CityName"].ToString();

                    //   }
                    //   con.Close();

                



                string com = "Select CityName from CityMaster";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlcityrequestedlist.DataSource = dt;
                ddlcityrequestedlist.DataBind();
                ddlcityrequestedlist.DataTextField = "CityName";
                ddlcityrequestedlist.DataBind();
            }   
            

        }
        protected void btnCreateRequest_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("TransferProc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@TId", txtTId.Text);
            cmd.Parameters.AddWithValue("@CrewId", Convert.ToInt32(Session["CrewId"]));
            cmd.Parameters.AddWithValue("@CurrentBase", Convert.ToString(Session["WorkingCity"]));
            cmd.Parameters.AddWithValue("@RequestedBase", ddlcityrequestedlist.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Reason", txtReasonForChange.Text);

            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblrequestCreated.Text = "Transfer Request has been Created";
                lblrequestCreated.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            else
            {
                lblrequestCreated.Text = "Failed to create Transfer Request";
                lblrequestCreated.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");

        }
    }
}