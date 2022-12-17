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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("GetTransferRequestForAdmin"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            //Get the row that contains this button
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            int CrewID=Convert.ToInt32(gvr.Cells[0].Text);
            TextBox reason = (TextBox)gvr.FindControl("txtReason");

            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("updateadminstatus", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CrewId", CrewID);
            cmd.Parameters.AddWithValue("@Reason", reason.Text);

            con.Open(); ;
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblsaved.Text = "Transfer Request Approved";
                lblsaved.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblsaved.Text = "Transfer Request Not Approved";
                lblsaved.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
           
        }
    }
}