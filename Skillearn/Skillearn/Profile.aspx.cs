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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is logged in by session
                if (Session["UserId"] == null)
                {
                    // Not logged in, redirect to login page
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    LoadUserProfile();
                }
            }
        }

        private void LoadUserProfile()
        {
            string userId = Session["UserId"].ToString();
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT FullName, Email FROM Users WHERE UserId = @UserId";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@UserId", userId);

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        lblFullName.Text = reader["FullName"].ToString();
                        lblEmail.Text = reader["Email"].ToString();
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error loading profile: " + ex.Message;
                }
            }
        }
    }
}