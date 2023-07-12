using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Yonetim
{
    public partial class UrunGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload test = (FileUpload)FormView1.FindControl("FileUpload1");
            if(test.HasFile)
            {
                test.SaveAs(Server.MapPath("~/blogResimler/" + test.FileName));

            }
            Label dosyaAdi = (Label)FormView1.FindControl("Label1");
            
        }
    }
}