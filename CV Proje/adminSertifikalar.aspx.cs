using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminSertifikalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblSertifikalarTableAdapter dt = new DataSet1TableAdapters.tblSertifikalarTableAdapter();
            Repeater1.DataSource = dt.SertifikaListesi();
            Repeater1.DataBind();
        }
    }
}