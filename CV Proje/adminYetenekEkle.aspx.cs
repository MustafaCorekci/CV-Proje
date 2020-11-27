using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminYetenekEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblYetenekTableAdapter dt = new DataSet1TableAdapters.tblYetenekTableAdapter();
            dt.YetenekEkle(txtYetenek.Text);
            Response.Redirect("adminYetenekler.aspx");
        }
    }
}