using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Albumes_Web
{
    public partial class FormImg : System.Web.UI.Page
    {
        public string UrlImg { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCargar_Click(object sender, EventArgs e)
        {
            UrlImg = txtUrl.Text;
        }
    }
}