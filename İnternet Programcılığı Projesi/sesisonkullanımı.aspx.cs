using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace İnternet_Programcılığı_Projesi
{

    public partial class sesisonkullanımı : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            Baglanti = new SqlConnection("Data Source =.; Initial Catalog = WebSitesiProje; Integrated Security = True");
            Baglanti.Open();
            kmt = new SqlCommand("select * from Kullanici", Baglanti);
            SqlDataReader oku = kmt.ExecuteReader();
            while (oku.Read())
            {
                string ab= Session["eposta"].ToString();


                string a = (oku["Adi"].ToString());
                string b = (oku["Soyadi"].ToString());
                if(ab==a)
                {
                    Response.Write("Doğru");
                        
                }
                //Session["eposta"] = TextBox1.Text;
            }

        }
    }
}