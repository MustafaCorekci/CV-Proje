using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CV_Proje
{
    public partial class girisYap : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-MN3O9G6\SQLEXPRESS;Initial Catalog=dbWebCv;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblAdmin Where kullanici = @kullanici and sifre = @sifre", baglanti);
            komut.Parameters.AddWithValue("@kullanici", txtKullanici.Text);
            komut.Parameters.AddWithValue("@sifre", txtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("adminDeneyimler.aspx");
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı Adı Yada Şifre Hatalı !!!')</script>");
            }
            baglanti.Close();
        }
    }
}