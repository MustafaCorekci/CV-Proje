using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminEgitimGuncelle : System.Web.UI.Page
    {
        short id;
        DataSet1TableAdapters.tblEgitmTableAdapter dt = new DataSet1TableAdapters.tblEgitmTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = short.Parse(Request.QueryString["id"]);
            if (Page.IsPostBack == false)
            {
                txtId.Text = id.ToString();
                txtBaslik.Text = dt.EgitimGetir(id)[0].baslik;
                txtAltBaslik.Text = dt.EgitimGetir(id)[0].altBaslik;
                txtAciklama.Text = dt.EgitimGetir(id)[0].aciklama;
                txtNotOrt.Text = dt.EgitimGetir(id)[0].notOrtalama;
                txtTarih.Text = dt.EgitimGetir(id)[0].tarih;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.EgitimGuncelle(txtBaslik.Text, txtAltBaslik.Text, txtAciklama.Text, txtNotOrt.Text, txtTarih.Text, id);
            Response.Redirect("adminEgitimler.aspx");
        }
    }
}