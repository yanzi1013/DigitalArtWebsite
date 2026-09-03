using System;
using System.Web.UI;

namespace DigitalArtWebsite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Redirect("~/Home.aspx");
            }
        }
    }
}
