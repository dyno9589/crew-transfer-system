using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Runtime.Remoting.Messaging;

namespace CrewTransfer_module
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Application code executed using: ");
            Response.Write(System.Security.Principal.WindowsIdentity.GetCurrent().Name + "<br/>");

            Response.Write("Is user Authenticated: ");
            Response.Write(User.Identity.IsAuthenticated.ToString() + "<br/>");

            Response.Write("Application Type, if Authenticated: ");
            Response.Write(User.Identity.AuthenticationType + "<br/>");

            Response.Write("User Name, if Authenticated: ");
            Response.Write(User.Identity.Name + "<br/>");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            // string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //SqlConnection con = new SqlConnection(strcon);
            //SqlCommand cmd = new SqlCommand("CrewMaster",con);

            AuthenticateUser(txtUsername.Text, txtpass.Text);
            if (!String.IsNullOrEmpty(Session["CrewId"].ToString()))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, chkBoxRememberMe.Checked);
                lblf.Text = "successfully logged in";
            }
            else
            {
                lblf.Text = "Invalid user Name and/or Password";
            }
        }

        private void AuthenticateUser(string username, string password)
        {

            string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter paramUsername = new SqlParameter("@Username", username);
                SqlParameter paramPassword = new SqlParameter("@Password", password);

                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                cmd.Connection = con;
                con.Open();

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Session["CrewId"] = Convert.ToString(sdr["CrewId"]);
                    Session["CrewName"] = Convert.ToString(sdr["CrewName"]);
                    Session["WorkingCity"] = Convert.ToString(sdr["WorkingCity"]);
                }
                
            }
            con.Close();

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {


        }
    }
}
