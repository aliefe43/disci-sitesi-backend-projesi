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
    public partial class Oncesi : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["AresDisConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblOncesi(Resim1,Resim2) values (@Resim1,@Resim2)", baglanti);
            komut.Parameters.AddWithValue("@Resim1", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Resim2", lblResim2.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Oncesi.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                if (FileUpload2.PostedFile.ContentType == "image/jpg" || FileUpload2.PostedFile.ContentType == "image/png" || FileUpload2.PostedFile.ContentType == "image/jpeg")
                {
                    string ResimAd = FileUpload2.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/img2/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim2.Text = "lütfem jpg veya png uzantılı dosya seç";
                }
            }
            else
                lblResim2.Text = "lütfen bir resim seç";
        }
    }
}