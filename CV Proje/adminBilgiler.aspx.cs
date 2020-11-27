using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminBilgiler : System.Web.UI.Page
    {
        DataSet1TableAdapters.tblAdminTableAdapter dt = new DataSet1TableAdapters.tblAdminTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                txtId.Text = dt.KullaniciListesi()[0].id.ToString();
                txtKullanici.Text = dt.KullaniciListesi()[0].kullanici;
                txtSifre.Text = dt.KullaniciListesi()[0].sifre;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.KullaniciGuncelle(txtKullanici.Text, txtSifre.Text, short.Parse(txtId.Text));
        }
    }
}