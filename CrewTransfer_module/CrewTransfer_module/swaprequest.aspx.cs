using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrewTransfer_module
{
    public partial class swaprequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                txtCrewId.Text = Session["CrewId"].ToString();

                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("[requestedbasesession]",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CrewId", txtCrewId.Text);
                cmd.Connection = con;
                con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            txtCurrentBase.Text = (string)sdr["CurrentBase"].ToString();
                            txtRequestedBase.Text = (string)sdr["RequestedBase"].ToString();
                        }
                    }
                    con.Close();
                
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("[swaprequestProc]", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CrewId", txtCrewId.Text);
            cmd.Parameters.AddWithValue("@CurrentBase",txtCurrentBase.Text);
            cmd.Parameters.AddWithValue("@RequestedBase",txtRequestedBase.Text);
            cmd.Parameters.AddWithValue("@SwapType", ddlSwapType.SelectedValue);
            cmd.Parameters.AddWithValue("@SwapCrewName", ddlselectcrew.SelectedValue);

            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblswaprequested.Text = "Transfer Request has been Created";
                lblswaprequested.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            else
            {
                lblswaprequested.Text = "Failed to create Transfer Request";
                lblswaprequested.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void ddlSwapType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            


                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("GetCrewNamesForSwap", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CurrentBase", txtCurrentBase.Text);
                cmd.Parameters.AddWithValue("@RequestedBase", txtRequestedBase.Text);
                cmd.Parameters.AddWithValue("@SwapType", ddlSwapType.Text);

                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ddlselectcrew.Text = (string)dr["CrewName"].ToString();


                }
                con.Close();
            
        }
    }
}