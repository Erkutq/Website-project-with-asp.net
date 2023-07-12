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
        
    public partial class Anasayfa : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlCommand kmt;
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ElektronikTableAdapters.CardTitleTableAdapter card = new ElektronikTableAdapters.CardTitleTableAdapter();
            Repeater1.DataSource = card.GetData();
            Repeater1.DataBind();

            ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter hakkımızda = new ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter();
            Repeater2.DataSource = hakkımızda.getHakkimzida();
            Repeater2.DataBind();

            Baglanti = new SqlConnection("Data Source=.;Initial Catalog=WebSitesiProje;Integrated Security=True");
            adapter = new SqlDataAdapter("select * from URUNLER", Baglanti);
            DataTable tablo = new DataTable();
            Baglanti.Open();
            adapter.Fill(tablo);
            //DataList1.DataSource = tablo;
            DataList1.DataBind();
            Baglanti.Close();
        }


    }
}