using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Sayfalar
{
    public partial class Yonetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ElektronikTableAdapters.CardTitleTableAdapter card = new ElektronikTableAdapters.CardTitleTableAdapter();
            Repeater1.DataSource = card.GetData();
            Repeater1.DataBind();

            

            //ElektronikTableAdapters.AnsayfaHakkımızdaTableAdapter hakkımızda = new ElektronikTableAdapters.AnsayfaHakkımızdaTableAdapter();
            //Repeater2.DataSource = hakkımızda.GetData();
            //Repeater2.DataBind();



        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Resimler/" + FileUpload1.FileName));
                ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter hakkımızda = new ElektronikTableAdapters.AnsayfaHakkimizdaTableAdapter();
                hakkımızda.anasayfaHakkimizda(FileUpload1.FileName,TextBox7.Text, TextBox8.Text, 14);
                Response.Redirect("/Sayfalar/Anasayfa.aspx");
            }
            else
            {
                Response.Write("Bir fotoğraf seçiniz");
            }
            
        }





        protected void InsertButton_Click1(object sender, EventArgs e)
        {
            FileUpload fileUpload1 = (FileUpload)FormView1.FindControl("FileUpload2");
            if (fileUpload1.HasFile)
            {
                fileUpload1.SaveAs(Server.MapPath("~/Resimler/" + fileUpload1.FileName));

            }
            else
            {
                Response.Write("Resim seçimediniz");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if(Resim.HasFile)
            {
                Resim.SaveAs(Server.MapPath("~/blogResimler/" + Resim.FileName));
                ElektronikTableAdapters.BlogIcerikTableAdapter blog = new ElektronikTableAdapters.BlogIcerikTableAdapter();
                blog.blogEkle(BaslikID.Text, IcerikID.Text, Convert.ToDateTime(TarihID.Text), Resim.FileName, Ozet.Text,Convert.ToInt32(KategoriID.Text));


            }
            else
            {
                Response.Write("Resim seçimediniz");

            }
        }

    }
}