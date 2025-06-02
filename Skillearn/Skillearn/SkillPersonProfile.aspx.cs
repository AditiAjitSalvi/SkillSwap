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
    public partial class SkillPersonProfile : System.Web.UI.Page
    {
        int skillPersonId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] == null || !int.TryParse(Request.QueryString["id"], out skillPersonId))
                {
                    lblError.Text = "Invalid Skill Person.";
                    btnRequestSkill.Enabled = false;
                    return;
                }

                LoadSkillPersonData(skillPersonId);
            }
        }

        private void LoadSkillPersonData(int id)
        {
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT FullName, Skill, Experience, ProfileInfo FROM SkillPeople WHERE SkillPersonId = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        lblFullName.Text = reader["FullName"].ToString();
                        lblSkill.Text = reader["Skill"].ToString();
                        lblExperience.Text = reader["Experience"].ToString();
                        lblProfileInfo.Text = reader["ProfileInfo"].ToString();
                    }
                    else
                    {
                        lblError.Text = "Skill Person not found.";
                        btnRequestSkill.Enabled = false;
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error: " + ex.Message;
                    btnRequestSkill.Enabled = false;
                }
            }
        }

        protected void btnRequestSkill_Click(object sender, EventArgs e)
        {
            // Check if user is logged in
            if (Session["UserId"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            int requesterUserId = Convert.ToInt32(Session["UserId"]);

            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string insertQuery = "INSERT INTO SkillRequests (RequesterUserId, SkillPersonId) VALUES (@RequesterUserId, @SkillPersonId)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@RequesterUserId", requesterUserId);
                cmd.Parameters.AddWithValue("@SkillPersonId", skillPersonId);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    lblSuccess.Text = "Your request has been sent successfully.";
                    lblError.Text = "";
                    btnRequestSkill.Enabled = false;
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error sending request: " + ex.Message;
                }
            }
        }
    }
}