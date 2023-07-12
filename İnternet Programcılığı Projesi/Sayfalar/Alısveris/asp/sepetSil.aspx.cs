using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp
{
    public partial class sepetSil : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Gelen = Request.QueryString["urun"];
            Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");

            //Sorgumuzu oluşturalım 
            kmt = new SqlCommand("DELETE FROM Sepet WHERE KullaniciID = @Giris AND UrunID=@UrunAdi", Baglanti);
            kmt.Parameters.AddWithValue("@Giris", Session["ID"].ToString());
            kmt.Parameters.AddWithValue("@UrunAdi",Convert.ToInt32(Gelen));


            //Veri adaptörümüzü oluşturalım
            adapter = new SqlDataAdapter(kmt);
            DataTable dt = new DataTable(); //Veri tablomuz:
            Baglanti.Open(); //Baglantiyi açalim:
            adapter.Fill(dt); //Veriyi dolduralim:
            Baglanti.Close(); //Baglantiyi kapatalim:
                              // sonuçlari DataList’e baglayalim:
            Response.Redirect("~/Sayfalar/Alısveris/asp/Urunler.aspx");

            //string Gelen = Request.QueryString["urun"];
            //ElektronikTableAdapters.SepetTableAdapter hak = new ElektronikTableAdapters.SepetTableAdapter();
            //hak.SepetSil(Convert.ToInt32(Gelen));
        }
    }
}