using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminYetenekler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblYetenekTableAdapter dt = new DataSet1TableAdapters.tblYetenekTableAdapter();
            Repeater1.DataSource = dt.YetenekListesi();
            Repeater1.DataBind();
        }
    }
}