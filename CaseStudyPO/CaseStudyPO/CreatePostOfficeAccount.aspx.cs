using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyPO
{
    public partial class CreatePostOfficeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Create a new instance of the data access class for PostOffice
            PostDataAccess dataAccess = new PostDataAccess();

            // Insert the data into the PostOffice table
            dataAccess.InsertPostOfficeData(
                txtFirstName.Text,
                txtLastName.Text,
                txtAddress.Text,
                txtSchemeName.Text,
                decimal.Parse(txtBalance.Text), // Ensure Balance is parsed to a decimal
                int.Parse(txtNoOfYears.Text),    // Ensure NoOfYears is parsed to an integer
                txtMobile.Text
            );

            // Redirect to the default page after the operation
            Response.Redirect("Default.aspx");
        }

    }
}