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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlCommand kmt2;

        SqlDataAdapter adapter;

        private void AdetAzaltma()
        {
            string Gelen = Request.QueryString["urun"];
            Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");

            //Sorgumuzu oluşturalım 
            kmt = new SqlCommand("UPDATE URUNLER SET UrunStok=UrunStok-1 WHERE URUNLER.ID=@Giris", Baglanti);
            kmt.Parameters.AddWithValue("@Giris",Convert.ToInt32(Gelen));

            //Veri adaptörümüzü oluşturalım
            adapter = new SqlDataAdapter(kmt);
            DataTable dt = new DataTable(); //Veri tablomuz:
            Baglanti.Open(); //Baglantiyi açalim:
            adapter.Fill(dt); //Veriyi dolduralim:
            Baglanti.Close(); //Baglantiyi kapatalim:
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null && Session["Adi"] != null)
            {
                string Gelen = Request.QueryString["urun"];
                ElektronikTableAdapters.SepetTableAdapter Sepet = new ElektronikTableAdapters.SepetTableAdapter();
                Sepet.SepetEkleme_(Convert.ToInt32(Session["ID"].ToString()), Convert.ToInt32(Gelen), Convert.ToInt32(Session["Adet"]));
                ElektronikTableAdapters.SiparislerTableAdapter Siparisler = new ElektronikTableAdapters.SiparislerTableAdapter();
                //Siparisler.Ekle(Convert.ToInt32(Session["ID"].ToString()), Convert.ToInt32(Gelen), 1, 1);
                //Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");
                //Baglanti.Open();

                Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");
                Baglanti.Open();
                kmt2 = new SqlCommand("select * from Sepet", Baglanti);

                SqlDataReader oku = kmt2.ExecuteReader();
                while (oku.Read())
                {


                    string a = (oku["UrunID"].ToString());
                    string b = (oku["KullaniciID"].ToString());
                    string adet = (oku["Adet"].ToString());
                    if (Convert.ToInt32(b) == Convert.ToInt32(Session["ID"]) && Convert.ToInt32(Gelen) == Convert.ToInt32(a))
                    {
                        ElektronikTableAdapters.SiparislerTableAdapter Siparis = new ElektronikTableAdapters.SiparislerTableAdapter();
                        Siparis.SiparisEkle(Convert.ToInt32(Session["ID"]), Convert.ToInt32(a), 1);

                        AdetAzaltma();




                        //dataGridView1.CurrentRow.Cells[0].Value.ToString();//UrunAdi


                    }











                }
                Baglanti.Close();


                Response.Redirect("~/Sayfalar/Alısveris/asp/Urunler.aspx");
            }
            else
            {
                Response.Redirect("~/Sayfalar/HataSayfasi.aspx");

            }


            //    ElektronikTableAdapters.URUNLERTableAdapter Urun = new ElektronikTableAdapters.URUNLERTableAdapter();
            //Urun.UrunEkleme(UrunKodu.Text, UrunAdı.Text, Convert.ToInt32(birimFiyati.Text), Kategori.SelectedValue, Convert.ToInt32(U
            //string kayit = "insert into sepet(KullaniciID,UrunID) values (@KullaniciID,@UrunID)";
            //// müşteriler tablomuzun ilgili alanlarına kayıt ekleme işlemini gerçekleştirecek sorgumuz.
            //kmt.Parameters.AddWithValue("KullaniciID",1 );
            //kmt.Parameters.AddWithValue("@UrunID", Gelen);



            //Sorgumuzu ve baglantimizi parametre olarak alan bir SqlCommand nesnesi oluşturuyoruz.
            //komut.Parameters.AddWithValue("@tcno", txtTc.Text);
            //komut.Parameters.AddWithValue("@isim", txtIsim.Text);
            //komut.Parameters.AddWithValue("@soyisim", txtSoyisim.Text)


        }
    }
}