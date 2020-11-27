using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class Hakkimda : System.Web.UI.Page
    {
        DataSet1TableAdapters.tblHakkimdaTableAdapter dt = new DataSet1TableAdapters.tblHakkimdaTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                txtAd.Text = dt.hakkimdaListele()[0].ad;
                txtSoyad.Text = dt.hakkimdaListele()[0].soyad;
                txtAdres.Text = dt.hakkimdaListele()[0].adres;
                txtMail.Text = dt.hakkimdaListele()[0].mail;
                txtTelefon.Text = dt.hakkimdaListele()[0].telefon;
                txtNot.Text = dt.hakkimdaListele()[0].hakkimda;
                var fotoUrl = dt.hakkimdaListele()[0].fotograf;
                if (fotoUrl != "")
                {
                    txtFotograf.Text = fotoUrl;
                }
                else
                {
                    txtFotograf.Text = "Lütfen Siteme Fotoğrafınızı Yükleyiniz";
                }
            }   
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.HakkimdaGuncelle(txtAd.Text, txtSoyad.Text, txtAdres.Text, txtMail.Text, txtTelefon.Text, txtNot.Text, txtFotograf.Text);
        }
    }
}