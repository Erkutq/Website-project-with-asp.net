using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
  

namespace İnternet_Programcılığı_Projesi.Sayfalar.UyeKayit
{
    public partial class UyeKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        private void uyeKayıtEkleme()
        {
            SqlConnection Baglanti = new SqlConnection("Data Source=.;Initial Catalog=WebSitesiProje;Integrated Security=True");
            string sorgu = "insert into Kullanici(Adi,Soyadi,Eposta,Sifre,Telefon) values(@Adi,@Soyadi,@Eposta,@Sifre,@telefon)";
            SqlCommand cmd = new SqlCommand(sorgu, Baglanti);
            Baglanti.Open();


            cmd.Parameters.AddWithValue("@Adi", Adi.Text);
            cmd.Parameters.AddWithValue("@Soyadi", SoyAdi.Text);
            cmd.Parameters.AddWithValue("@Eposta", Sifre.Text);
            cmd.Parameters.AddWithValue("@Sifre", eposta.Text);
            cmd.Parameters.AddWithValue("@telefon", Telefon.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            uyeKayıtEkleme();
            
        }
    }
}