﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminDeneyimler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();
            Repeater1.DataSource = dt.DeneyimListele();
            Repeater1.DataBind();
        }
    }
}