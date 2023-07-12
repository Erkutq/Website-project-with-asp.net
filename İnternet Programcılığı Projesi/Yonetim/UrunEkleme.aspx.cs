using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
    

namespace İnternet_Programcılığı_Projesi.Yonetim
{
    public partial class UrunEkleme : System.Web.UI.Page
    { 


        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Admin"].ToString();
            //Baglanti = new SqlConnection("Data Source=.;Initial Catalog=WebSitesiProje;Integrated Security=True");
            //adapter = new SqlDataAdapter("select URUNLER.ÜrünAdi,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi from URUNLER,UrunlerKategori,UrunResim where URUNLER.KategoriId=UrunlerKategori.ID and URUNLER.ID=UrunResim.ID", Baglanti);
            //DataTable tablo = new DataTable();
            //Baglanti.Open();
            //adapter.Fill(tablo);
            //DataList1.DataSource = tablo;
            //DataList1.DataBind();
            //Baglanti.Close();
            //2 tb
            //1 tb multi
            //1 drop
            //2 fileupload

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            ElektronikTableAdapters.URUNLERTableAdapter Urun = new ElektronikTableAdapters.URUNLERTableAdapter();
            Urun.UrunEkleme(UrunKodu.Text, UrunAdı.Text, Convert.ToInt32(birimFiyati.Text), Kategori.SelectedValue, Convert.ToInt32(UrunStok.Text), TextBox1.Text);

            //ElektronikTableAdapters.URUNLER1TableAdapter hak = new ElektronikTableAdapters.URUNLER1TableAdapter();
            //hak.ÜrünEkleme(UrunKodu.Text,UrunAdı.Text,Convert.ToInt32(birimFiyati.Text),Kategori.SelectedValue,Convert.ToInt32(UrunStok.Text),TextBox1.Text);

           

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/UrunResim/" + FileUpload1.FileName));
                FileUpload2.SaveAs(Server.MapPath("~/UrunResim/" + FileUpload2.FileName));
                ElektronikTableAdapters.UrunResimTableAdapter resim = new ElektronikTableAdapters.UrunResimTableAdapter();
                resim.ResimEkleme(FileUpload1.FileName, FileUpload2.FileName);
            }
            else
            {
                Response.Write("Bir fotoğraf seçiniz");
            }

        }


    }
}