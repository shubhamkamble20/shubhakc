using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyPO
{
    public partial class DeletePostOfficeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private int Id => int.Parse(Request.QueryString["Id"]);

        // Create an instance of PostDataAccess to interact with the database
        private PostDataAccess dataAccess = new PostDataAccess();
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            PostDataAccess dataAccess = new PostDataAccess();
            dataAccess.DeletePostOfficeData(Id);
            Response.Redirect("Default.aspx");
        }
    }
}