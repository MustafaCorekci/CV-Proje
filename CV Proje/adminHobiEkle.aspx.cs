using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminHobiEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();
            dt.HobiEkle(txtHobi.Text);
            Response.Redirect("adminHobiler.aspx");
        }
    }
}