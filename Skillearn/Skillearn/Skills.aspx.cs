using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skillearn
{
    public partial class Skillaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSkillPeople();
            }
        }

        private void LoadSkillPeople()
        {
            string connStr = ConfigurationManager.ConnectionStrings["SkillSwapDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT SkillPersonId, FullName, Skill, Experience FROM SkillPeople";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();

                try
                {
                    da.Fill(dt);
                    rptSkillPeople.DataSource = dt;
                    rptSkillPeople.DataBind();
                }
                catch (Exception ex)
                {
                    // Handle error (log or show message)
                }
            }
        }

    }
}