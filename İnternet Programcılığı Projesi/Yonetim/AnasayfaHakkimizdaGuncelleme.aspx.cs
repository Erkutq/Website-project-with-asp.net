using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Yonetim
{
    public partial class AnasayfaHakkimizdaGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Resimler/" + FileUpload1.FileName));
                ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter hakkımızda = new ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter();
                hakkımızda.anasayfaHakkimizda(FileUpload1.FileName, baslik.Text, TextBox1.Text,14);
                
            }
            else
            {
                Response.Write("Bir fotoğraf seçiniz");
            }
        }
    }
}