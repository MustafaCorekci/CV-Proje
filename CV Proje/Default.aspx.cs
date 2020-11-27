using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Hakkımda
            DataSet1TableAdapters.tblHakkimdaTableAdapter dt = new DataSet1TableAdapters.tblHakkimdaTableAdapter();
            Repeater1.DataSource = dt.hakkimdaListele();
            Repeater1.DataBind();

            //Deneyim
            DataSet1TableAdapters.tblDeneyimTableAdapter dt2 = new DataSet1TableAdapters.tblDeneyimTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListele();
            Repeater2.DataBind();

            //Eğitim
            DataSet1TableAdapters.tblEgitmTableAdapter dt3 = new DataSet1TableAdapters.tblEgitmTableAdapter();
            Repeater3.DataSource = dt3.EgitimListele();
            Repeater3.DataBind();

            //Yetenek
            DataSet1TableAdapters.tblYetenekTableAdapter dt4 = new DataSet1TableAdapters.tblYetenekTableAdapter();
            Repeater4.DataSource = dt4.YetenekListesi();
            Repeater4.DataBind();

            //Hobi
            DataSet1TableAdapters.tblHobiTableAdapter dt5 = new DataSet1TableAdapters.tblHobiTableAdapter();
            Repeater5.DataSource = dt5.HobiListesi();
            Repeater5.DataBind();

            //Sertifika
            DataSet1TableAdapters.tblSertifikalarTableAdapter dt6 = new DataSet1TableAdapters.tblSertifikalarTableAdapter();
            Repeater6.DataSource = dt6.SertifikaListesi();
            Repeater6.DataBind();

            //Fotoğraf
            DataSet1TableAdapters.tblAdminTableAdapter dt7 = new DataSet1TableAdapters.tblAdminTableAdapter();
            Repeater7.DataSource = dt7.KullaniciListesi();
            Repeater7.DataBind();
        }
    }
}