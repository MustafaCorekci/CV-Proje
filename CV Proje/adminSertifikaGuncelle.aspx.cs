using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminSertifikaGuncelle : System.Web.UI.Page
    {
        short id;
        DataSet1TableAdapters.tblSertifikalarTableAdapter dt = new DataSet1TableAdapters.tblSertifikalarTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = short.Parse(Request.QueryString["id"]);

            if (Page.IsPostBack == false)
            {
                txtId.Text = id.ToString();
                txtSertifika.Text = dt.SertifikaGetir(id)[0].sertifika;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.SertifikaGuncelle(txtSertifika.Text, id);
            Response.Redirect("adminSertifikalar.aspx");
        }
    }
}