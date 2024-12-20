using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyPO
{
    public partial class EditPostOfficeAccount : System.Web.UI.Page
    {
        private int Id => int.Parse(Request.QueryString["Id"]);

        // Create an instance of PostDataAccess to interact with the database
        private PostDataAccess dataAccess = new PostDataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPostOfficeAccountDetails();
            }
        }

        // Load existing post office account details from the database
        private void LoadPostOfficeAccountDetails()
        {
            // Get the Post Office data
            var postData = dataAccess.GetPostOfficeData();

            // Find the row with the matching Id and load the data into the form fields
            foreach (System.Data.DataRow row in postData.Rows)
            {
                if (row["Id"].ToString() == Id.ToString())
                {
                    txtFirstname.Text = row["Firstname"].ToString();
                    txtLastname.Text = row["Lastname"].ToString();
                    txtAddress.Text = row["Address"].ToString();
                    txtSchemename.Text = row["Schemename"].ToString();
                    txtBalance.Text = row["Balance"].ToString();
                    txtNoOfYears.Text = row["NoOfYears"].ToString();
                    txtMobile.Text = row["Mobile"].ToString();
                    break;
                }
            }
        }

        // Handle the update button click event to update the post office account details
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Get the updated values from the form
                string firstName = txtFirstname.Text;
                string lastName = txtLastname.Text;
                string address = txtAddress.Text;
                string schemeName = txtSchemename.Text;
                decimal balance = decimal.Parse(txtBalance.Text);
                int noOfYears = int.Parse(txtNoOfYears.Text);
                string mobile = txtMobile.Text;

                // Use the data access class to update the record in the database
                dataAccess.UpdatePostOfficeData(Id, firstName, lastName, address, schemeName, balance, noOfYears, mobile);

                // Redirect to the default page after updating
                Response.Redirect("Default.aspx");
            }
        }
    }
}