using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Skillearn
{
    public partial class SkillBuddy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] != null)
                {
                    LoadSkillBuddies();
                }
                else
                {
                    lblMessage.Text = "You must be logged in to view this page.";
                }
            }
        }

        private void LoadSkillBuddies()
        {
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"
            SELECT sp.FullName, sp.Email, sp.Skill, sp.Experience, sp.ProfileInfo, sr.Status
            FROM SkillRequests sr
            INNER JOIN SkillPeople sp ON sr.SkillPersonId = sp.SkillPersonId
            WHERE sr.RequesterUserId = @UserId";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@UserId", Session["UserId"]);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    rptSkillBuddies.DataSource = dt;
                    rptSkillBuddies.DataBind();
                }
                else
                {
                    lblMessage.Text = "You have no Skill Buddies yet.";
                }
            }
        }

    }
}

