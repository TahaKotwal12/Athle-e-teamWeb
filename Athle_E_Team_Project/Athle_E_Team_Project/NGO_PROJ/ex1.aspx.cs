using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGO_PROJ
{
    public partial class ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtd1.Text = Calendar1.SelectedDate.ToString();

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtd2.Text = Calendar2.SelectedDate.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TimeSpan t = Convert.ToDateTime(txtd1.Text) - Convert.ToDateTime(txtd2.Text);
            double NrOfDays = t.TotalDays;
            lblcal.Text = NrOfDays.ToString();
          
        }
    }
}