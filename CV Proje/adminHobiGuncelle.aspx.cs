using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminHobiGuncelle : System.Web.UI.Page
    {
        short id;
        DataSet1TableAdapters.tblHobiTableAdapter dt = new DataSet1TableAdapters.tblHobiTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = short.Parse(Request.QueryString["id"]);

            if (Page.IsPostBack == false)
            {
                txtId.Text = id.ToString();
                txtHobi.Text = dt.HobiGetir(id)[0].hobi;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.HobiGuncelle(txtHobi.Text, id);
            Response.Redirect("adminHobiler.aspx");
        }
    }
}