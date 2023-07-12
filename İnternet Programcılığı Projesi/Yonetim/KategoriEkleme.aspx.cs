using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Yonetim
{
    public partial class KategoriEkleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ElektronikTableAdapters.UrunlerKategoriTableAdapter UrunlerKategori = new ElektronikTableAdapters.UrunlerKategoriTableAdapter();
            UrunlerKategori.InsertQuery(TextBox1.Text);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ElektronikTableAdapters.UrunlerKategoriTableAdapter UrunlerKategori = new ElektronikTableAdapters.UrunlerKategoriTableAdapter();
            UrunlerKategori.InsertQuery(TextBox1.Text);
        }
    }
}