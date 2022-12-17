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
using Microsoft.Ajax.Utilities;

namespace CrewTransfer_module.Registeration_folder
{
    public partial class registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string strcon = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("registerationPro", con);
                cmd.CommandType = CommandType.StoredProcedure;

                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpass.Text, "SHA1");

                SqlParameter username = new SqlParameter("@Username", txtusername.Text);
                SqlParameter password = new SqlParameter("@Password", EncryptedPassword);
                SqlParameter email = new SqlParameter("@Email", txtmail.Text);

                cmd.Parameters.Add(username);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);


                con.Open(); ;
                int ReturnCode = (int)cmd.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    lblreg.Text = "user name already in use, please choose another user name";
                    lblreg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Response.Redirect("~/login.aspx");
                }
                con.Close();
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}






