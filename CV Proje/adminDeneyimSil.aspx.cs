using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminDeneyimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();

            short id = Convert.ToSByte(Request.QueryString["id"]);
            dt.DeneyimSil(id);
            Response.Redirect("adminDeneyimler.aspx");
        }
    }
}