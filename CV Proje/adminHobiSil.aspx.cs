using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminHobiSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            short id = short.Parse(Request.QueryString["id"]);
            DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();
            dt.HobilSil(id);
            Response.Redirect("adminHobiler.aspx");
        }
    }
}