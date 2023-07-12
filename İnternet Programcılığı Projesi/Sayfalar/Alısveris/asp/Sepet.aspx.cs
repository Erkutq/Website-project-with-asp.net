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
    public partial class Sepet : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;
        SqlCommand kmt2;
        SqlDataAdapter adapter2;
        SqlCommand kmt3;

        protected void Page_Load(object sender, EventArgs e)
        {
            //------> ÜRÜN BİLGİLERİ
            if (Session["ID"] != null && Session["Adi"] != null)
            {
                Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");

                //Sorgumuzu oluşturalım 
                kmt = new SqlCommand("SELECT * FROM URUNLER,Sepet,Kullanici,UrunlerKategori,UrunResim WHERE URUNLER.ID=Sepet.UrunID AND Kullanici.ID=Sepet.KullaniciID and UrunlerKategori.ID=URUNLER.KategoriId and URUNLER.ID=UrunResim.ID and Kullanici.ID=@Giris", Baglanti);
                kmt.Parameters.AddWithValue("@Giris", Session["ID"].ToString());

                //Veri adaptörümüzü oluşturalım
                adapter = new SqlDataAdapter(kmt);
                DataTable dt = new DataTable(); //Veri tablomuz:
                Baglanti.Open(); //Baglantiyi açalim:
                adapter.Fill(dt); //Veriyi dolduralim:
                Baglanti.Close(); //Baglantiyi kapatalim:
                                  // sonuçlari DataList’e baglayalim:
                Label1.Text = Session["Adi"].ToString();
                DataList1.DataSource = dt;
                DataList1.DataBind();
                Label2.Text = dt.Compute("SUM(BirimFiyati)", "").ToString();
            }

            else
            {
                // Değerler null olduğunda yapılacak işlemler.
                // Hata sayfasına yönlendirme gibi.
                Response.Redirect("~/Sayfalar/HataSayfasi.aspx");
            }

        }
           


            //--------> KULLANICI BILGILERİ
            //Sorgumuzu oluşturalım 


            //kmt2 = new SqlCommand("select Kullanici.Adi,Kullanici.Soyadi,sum(URUNLER.BirimFiyati) as TEST from Siparisler INNER JOIN URUNLER ON Siparisler.ToplamTutar = URUNLER.ID INNER JOIN Kullanici ON Siparisler.KullanıcıID = @Giris group by Kullanici.Adi, Kullanici.Soyadi", Baglanti);
            //kmt2.Parameters.AddWithValue("@Giris", Session["ID"].ToString());
            //DataTable dt2 = new DataTable(); //Veri tablomuz:
            //Baglanti.Open(); //Baglantiyi açalim:
            //adapter.Fill(dt2); //Veriyi dolduralim:
            //Baglanti.Close(); //Baglantiyi kapatalim:
            //// sonuçlari DataList’e baglayalim:
            //DataList2.DataSource = dt2;
            //DataList2.DataBind();






        }
    }