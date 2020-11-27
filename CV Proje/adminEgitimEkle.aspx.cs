using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminEgitimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tblEgitmTableAdapter dt = new DataSet1TableAdapters.tblEgitmTableAdapter();
            dt.EgitimEkle(txtBaslik.Text, txtAltBaslik.Text, txtAciklama.Text, txtNotOrt.Text, txtTarih.Text);
            Response.Redirect("adminEgitimler.aspx");
        }
    }
}