using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminEğitimler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblEgitmTableAdapter dt = new DataSet1TableAdapters.tblEgitmTableAdapter();
            Repeater1.DataSource = dt.EgitimListele();
            Repeater1.DataBind();
        }
    }
}