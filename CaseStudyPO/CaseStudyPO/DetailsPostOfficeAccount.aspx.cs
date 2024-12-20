using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyPO
{
    public partial class DetailsPostOfficeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 int accountId = Convert.ToInt32(Request.QueryString["Id"]);

                LoadAccountDetails(accountId);
            }
        }

        private void LoadAccountDetails(int accountId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PostOfficeCasestudy"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM PostOffice WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", accountId);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    lblFirstName.Text = reader["Firstname"].ToString();
                    lblLastName.Text = reader["Lastname"].ToString();
                    lblAddress.Text = reader["Address"].ToString();
                    lblSchemeName.Text = reader["Schemename"].ToString();
                    lblBalance.Text = reader["Balance"].ToString();
                    lblNoOfYears.Text = reader["NoOfYears"].ToString();
                    lblMobile.Text = reader["Mobile"].ToString();
                }
            }
        }
    }


}
    