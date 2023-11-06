using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Dis.Yonetim
{
    public partial class HizmetlerDuzenleSil : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["AresDisConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblHizmetler(Baslik,Icon) values (@Baslik,@Icon)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Icon", txtIcon.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("HizmetlerDuzenleSil.aspx");
        }
    }
}