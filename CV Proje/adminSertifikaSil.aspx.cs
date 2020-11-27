using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminSertifikaSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblSertifikalarTableAdapter dt = new DataSet1TableAdapters.tblSertifikalarTableAdapter();
            dt.SertifikaSil(short.Parse(Request.QueryString["id"]));
            Response.Redirect("adminSertifikalar.aspx");
        }
    }
}