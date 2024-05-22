using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Web.Security;
namespace NGO_PROJ
{
    public partial class ViewMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                FillGv();
            }
        }

        protected void FillGv()
        {

            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from ScheduleMatch", con);
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string mid = GridView1.DataKeys[e.RowIndex].Values["matchid"].ToString();
            Session["mid"] = mid;
            Response.Redirect("~/viewmember1.aspx");
        }
    }
}