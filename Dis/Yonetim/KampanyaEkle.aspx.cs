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
    public partial class KampanyaEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["AresDisConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/img2/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "lütfem jpg veya png uzantılı dosya seç";
                }
            }
            else
                lblResim.Text = "lütfen bişr resim seç";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblKampanya(Isim,Resim,Fiyat,Aciklama) values (@Isim,@Resim,@Fiyat,@Aciklama)", baglanti);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Isim", txtIsim.Text.ToString());
            komut.Parameters.AddWithValue("@Aciklama", txtAciklama.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", txtFiyat.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("KampanyaDuzenleSil.aspx");
        }
    }
}