using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Dis
{
    public partial class Randevu : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["AresDisConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblRandevu(AdSoyad,Tel,Mail,Mesaj) values (@AdSoyad,@Tel,@Mail,@Mesaj)", baglanti);
            komut.Parameters.AddWithValue("@AdSoyad", TextBox1.Text.ToString());
            komut.Parameters.AddWithValue("@Tel", TextBox3.Text.ToString());
            komut.Parameters.AddWithValue("@Mail", TextBox2.Text.ToString());
            komut.Parameters.AddWithValue("@Mesaj", TextBox4.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("~/Yonetim/RandevuBilgi.aspx");
        }
    }
}