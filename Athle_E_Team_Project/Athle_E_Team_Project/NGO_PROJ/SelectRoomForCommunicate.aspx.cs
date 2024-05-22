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
    public partial class SelectRoomForCommunicate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGv();
            }
        }
        protected void FindUserNameExist()
        {
            // string cid = Session["ClassRoomId"].ToString();
            HiddenField1.Value = "0";
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from MembersInChatGroup", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            int n1 = ds.Tables["t1"].Rows.Count;
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if (r1["username"].ToString() == Session["un"].ToString())
                {
                    string uname = r1["username"].ToString();
                    HiddenField1.Value = "1";
                }
            }
        }
        protected void AddUsernameInJoinClass()
        {
            if (HiddenField1.Value.ToString() == "0")
            {
                string cgid = Session["cgid"].ToString();
                string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into MembersInChatGroup (cgid,username,joindate) values(@cgid,@username,@joindate)", con);
                cmd.Parameters.AddWithValue("cgid", cgid);
                cmd.Parameters.AddWithValue("username", Session["un"].ToString());
                cmd.Parameters.AddWithValue("joindate", System.DateTime.Now);

                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string cgid = GridView1.DataKeys[e.RowIndex].Values["cgid"].ToString();
            Label roomname = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
            Session["roomname"] = roomname.Text;
            Session["cgid"] = cgid;
            FindUserNameExist();
            AddUsernameInJoinClass();

            Response.Redirect("Communication.aspx");
        }
        protected void FillGv()
        {
            
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select * from ChatGroups order by cgid desc", con);
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
        }
    }
}