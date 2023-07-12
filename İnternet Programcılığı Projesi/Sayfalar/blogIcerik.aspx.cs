using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Projesi.Sayfalar.BlogSayfası
{
    public partial class blogIcerik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Request.QueryString["urunno"];

            ElektronikTableAdapters.BlogIcerikTableAdapter Artir = new ElektronikTableAdapters.BlogIcerikTableAdapter();
            Artir.OkunmaSayısı(Convert.ToInt32(v));
        }
    }
}