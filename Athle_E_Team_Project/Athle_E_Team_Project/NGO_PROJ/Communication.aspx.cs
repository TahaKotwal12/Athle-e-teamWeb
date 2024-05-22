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
    public partial class Communication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FindRoomname();
            }
        }
        protected void FindRoomname()
        {
            string cgid = Session["cgid"].ToString();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select * from ChatGroups where cgid=" + cgid, con);
            da.Fill(ds, "t1");
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                string roomname = r1["ChatGroupname"].ToString();
                Label1.Text = roomname;
            }
            con.Close();
        }
    }
}