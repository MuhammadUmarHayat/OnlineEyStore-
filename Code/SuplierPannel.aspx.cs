using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEyeStore
{
    public partial class SuplierPannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {

                string userid = Session["userid"].ToString();
                Label1.Text = userid;
            }
            }
    }
}