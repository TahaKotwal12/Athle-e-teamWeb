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
    public partial class ViewMember1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                FindMatchName();
                FillGv();
            }
        }

        protected void FindMatchName()
        {
            string mid = Session["mid"].ToString();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select * from ScheduleMatch where matchid=" + mid, con);
            da.Fill(ds, "t1");
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                string matchtitle = r1["title"].ToString();
                Label6.Text = matchtitle;
            }
            con.Close();
        }
        protected void FillGv()
        {
            string mid = Session["mid"].ToString();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select * from ScheduleMatch a,shownintrest b,tbl_MemberRegistration c where a.matchid=b.matchid  and b.username=c.username and b.matchid=" + mid, con);
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
        }

    }
}