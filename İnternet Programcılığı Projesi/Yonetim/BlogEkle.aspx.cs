using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/blogResimler/" + FileUpload1.FileName));
                ElektronikTableAdapters.BlogIcerikTableAdapter blog = new ElektronikTableAdapters.BlogIcerikTableAdapter();
                blog.blogEkle(Baslik.Text, Icerik.Text, Convert.ToDateTime(tarih.Text), FileUpload1.FileName, TextBox1.Text, Convert.ToInt32(DropDownList1.Text));


            }
            else
            {
                Response.Write("Resim seçimediniz");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}