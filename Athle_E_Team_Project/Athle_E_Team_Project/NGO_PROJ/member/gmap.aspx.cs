using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGO_PROJ.member
{
    public partial class gmap : System.Web.UI.Page
    {
        protected string sr,dn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string lc = Request.QueryString["Address"];
                //dn = Session["address"].ToString();
                //string lc = "Pune";
                string lc = Session["useradd"].ToString();
                //dn = Session["loc"].ToString();
                dn = Session["sportaddress"].ToString();
                sr = lc;
                lblLocation.Text = lc;
            }
        }
    }
}