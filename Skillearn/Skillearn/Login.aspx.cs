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
    public partial class Login : System.Web.UI.Page
    {
        private object userIdFromDatabase;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                conn.Open();

                // First check if user exists
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                int count = (int)cmd.ExecuteScalar();

                if (count == 1)
                {
                    // Now get user details to store in session
                    string queryDetails = "SELECT UserId, FullName, Email FROM Users WHERE Email = @Email AND Password = @Password";
                    SqlCommand cmdDetails = new SqlCommand(queryDetails, conn);
                    cmdDetails.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmdDetails.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    SqlDataReader reader = cmdDetails.ExecuteReader();

                    if (reader.Read())
                    {
                        Session["UserId"] = reader["UserId"].ToString();
                        Session["FullName"] = reader["FullName"].ToString();
                        Session["Email"] = reader["Email"].ToString();
                        
                        lblMsg.Text = "Login successful!";
                        lblMsg.CssClass = "text-green-600";

                        Response.Redirect("Dashbord.aspx");
                    }
                    reader.Close();
                Session["UserId"] = userIdFromDatabase;}
                else
                {
                    lblMsg.Text = "Invalid email or password.";
                    lblMsg.CssClass = "text-red-600";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error: " + ex.Message;
                lblMsg.CssClass = "text-red-600";
            }
            finally
            {
                conn.Close();
            }
        }
    }
}