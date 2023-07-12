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
    public partial class KullaniciGiris : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");
            Baglanti.Open();
            kmt = new SqlCommand("select * from Kullanici where Eposta=@Eposta and Sifre=@Sifre", Baglanti);
            kmt.Parameters.AddWithValue("@Eposta", TextBox1.Text.ToString());
            kmt.Parameters.AddWithValue("@Sifre", TextBox2.Text.ToString());
            SqlDataReader oku = kmt.ExecuteReader();
            while(oku.Read())
            {
                string a = (oku["Eposta"].ToString());
                string b = (oku["Sifre"].ToString());
                
                
                if (a == TextBox1.Text && b==TextBox2.Text)
                {
                    //Burası kullanıcıId sini alıyor
                    Session["ID"] = oku["ID"].ToString();
                    Session["Adi"] = oku["Adi"].ToString();
                    //string isim = (oku["Adi"].ToString());
                    Response.Redirect("~/Sayfalar/Alısveris/asp/Sepet.aspx");
                   

                }
                else
                {
                    Response.Redirect("~/Sayfalar/Alısveris/asp/Sepet.aspx");
                }



            }
            Baglanti.Close();
        }
    }
    }
