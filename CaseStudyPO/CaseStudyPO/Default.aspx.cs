﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyPO
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            PostDataAccess dataAccess = new PostDataAccess();
            GridView1.DataSource = dataAccess.GetPostOfficeData();
            GridView1.DataBind();
        }
    }
}
    