using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminDeneyimGuncelle : System.Web.UI.Page
    {
        short id;
        DataSet1TableAdapters.tblDeneyimTableAdapter dt = new DataSet1TableAdapters.tblDeneyimTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = short.Parse(Request.QueryString["id"]);

            if (Page.IsPostBack == false)
            {
                txtid.Text = id.ToString();
                txtBaslik.Text = dt.DeneyimGetir(id)[0].baslik;
                txtAltBaslik.Text = dt.DeneyimGetir(id)[0].altBaslik;
                txtAciklama.Text = dt.DeneyimGetir(id)[0].aciklama;
                txtTarih.Text = dt.DeneyimGetir(id)[0].tarih;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.DeneyimGuncelle(txtBaslik.Text, txtAltBaslik.Text, txtAciklama.Text, txtTarih.Text, id);
            Response.Redirect("adminDeneyimler.aspx");
        }
    }
}