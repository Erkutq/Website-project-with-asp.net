using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace İnternet_Programcılığı_Projesi.Sayfalar
{

    public partial class AdminGiris : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Baglanti = new SqlConnection("Data Source=.; Initial Catalog=WebSitesiProje; Integrated Security=True");
            Baglanti.Open();
            kmt = new SqlCommand("select * from AdminBilgileri where AdminMail=@Mail and Admin=@Sifre", Baglanti);
            kmt.Parameters.AddWithValue("@Mail", TextBox1.Text);
            kmt.Parameters.AddWithValue("@Sifre", TextBox2.Text);
            SqlDataReader oku = kmt.ExecuteReader();

            if (oku.Read())
            {
                string mail = oku["AdminMail"].ToString();
                string sifre = oku["Admin"].ToString();

                if (mail == TextBox1.Text && sifre == TextBox2.Text)
                {
                    Session["Admin"] = mail;
                    Response.Redirect("~/Yonetim/UrunEkleme.aspx");
                }
                else
                {
                    Response.Write("Lütfen doğru kullanıcı adınızı ve şifrenizi kontrol edinizi");
                }
            }
            else
            {
                Response.Write("Kullanıcı bulunamadı.");
            }
        }

    }
}