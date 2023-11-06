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
    public partial class KurumsalDuzenleSil : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["AresDisConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblHakkimizda(Baslik,Aciklama,Misyon,Vizyon) values (@Baslik,@Aciklama,@Misyon,@Vizyon)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Aciklama", txtHakkimizda.Text.ToString());
            komut.Parameters.AddWithValue("@Misyon", txtMisyon.Text.ToString());
            komut.Parameters.AddWithValue("@Vizyon", txtVizyon.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("KurumsalDuzenleSil.aspx");
        }
    }
}