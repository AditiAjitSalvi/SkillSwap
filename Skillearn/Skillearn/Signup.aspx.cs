using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skillearn
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                conn.Open();
                string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@FullName, @Email, @Password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@FullName", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim()); // Hash in production

                cmd.ExecuteNonQuery();
                lblMsg.Text = "Registration successful!";
                lblMsg.CssClass = "text-green-600";
                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    
    }
}