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
    public partial class urunDetay : System.Web.UI.Page
    {
        //SqlConnection Baglanti;
        //SqlCommand kmt;
        //SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Baglanti = new SqlConnection("Data Source=.;Initial Catalog=WebSitesiProje;Integrated Security=True");
            //adapter = new SqlDataAdapter("select URUNLER.ID,URUNLER.ÜrünAdi,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi from URUNLER,UrunlerKategori,UrunResim where URUNLER.KategoriId=UrunlerKategori.ID and URUNLER.ID=UrunResim.ID", Baglanti);
            //DataTable tablo = new DataTable();
            //Baglanti.Open();
            //adapter.Fill(tablo);
            ////DataList1.DataSource = tablo;
            //DataList1.DataBind();
            //Baglanti.Close();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}