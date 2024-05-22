using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGO_PROJ
{
    public partial class ex2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double Fahrenheit = 97;
           Label1.Text="Temperature in Fahrenheit is:" + Fahrenheit.ToString();
            double Celsius = (Fahrenheit - 32) * 5 / 9;
            Label2.Text ="Temprature in Celsius is "+ Celsius.ToString();
            
        }
    }
}