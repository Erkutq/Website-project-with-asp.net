using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi
{
    public partial class Yönetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //ElektronikTableAdapters.CardTitleTableAdapter card = new ElektronikTableAdapters.CardTitleTableAdapter();
            //Repeater1.DataSource = card.GetData();
            //Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ElektronikTableAdapters.CardTitleTableAdapter ta = new ElektronikTableAdapters.CardTitleTableAdapter();
            ta.GüncellemeCard(TextBox1.Text,TextBox2.Text,1);
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //Buraya anasayfada bulunan hakkımızda kısmına gelicek resim gelebilir
                ElektronikTableAdapters.AnsayfaHakkımızdaTableAdapter ta = new ElektronikTableAdapters.AnsayfaHakkımızdaTableAdapter();
                ta.AnasayfaHakkimizda(FileUpload1.FileName, TextBox1.Text, TextBox2.Text);


            }
            else
            {
                Response.Write("Lütfen bir resim seçiniz");
            }
        }

        //protected void TextBox6_TextChanged(object sender, EventArgs e)
        //{
        //    ElektronikTableAdapters.CardTitleTableAdapter ta = new ElektronikTableAdapters.CardTitleTableAdapter();
        //    ta.CardTitle(TextBox1.Text, TextBox2.Text);
        //    TextBox5.Text=labe
        //}
    }
}