using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_Proje
{
    public partial class adminYetenekGuncelle : System.Web.UI.Page
    {
        short id;
        DataSet1TableAdapters.tblYetenekTableAdapter dt = new DataSet1TableAdapters.tblYetenekTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = short.Parse(Request.QueryString["id"]);
            if (Page.IsPostBack == false)
            {
                txtId.Text = id.ToString();
                txtYetenek.Text = dt.YetenekGetir(id)[0].yetenek;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            dt.YetenekGuncelle(txtYetenek.Text, id);
            Response.Redirect("adminYetenekler.aspx");
        }
    }
}