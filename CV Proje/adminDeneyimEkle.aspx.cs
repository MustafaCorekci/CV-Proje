using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminDeneyimEkle : System.Web.UI.Page
    {
        DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            dt.DeneyimEkle(txtBaslik.Text, txtAltBaslik.Text, txtAciklama.Text, txtTarih.Text);
            Response.Redirect("adminDeneyimler.aspx");
        }
    }
}