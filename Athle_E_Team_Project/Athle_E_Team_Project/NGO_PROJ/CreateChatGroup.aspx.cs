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
    public partial class CreateChatGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGv();
            }
        }
        protected void InsertFunction()
        {
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ChatGroups (ChatGroupName,Details,Createdby,CreatedDate) values(@ChatGroupName,@Details,@Createdby,@CreatedDate)", con);
            cmd.Parameters.AddWithValue("ChatGroupName", txtgroupname.Text);
            cmd.Parameters.AddWithValue("Details", txtdetails.Text);
            cmd.Parameters.AddWithValue("Createdby", Session["un"].ToString());
            cmd.Parameters.AddWithValue("CreatedDate", DateTime.Now);
    


            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Chat Room Created Successfully";
            BtnRegistration.Visible = false;
            FillGv();
        }

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            InsertFunction();
        }
        protected void FillGv()
        {
           
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select * from ChatGroups order by cgid desc" , con);
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string cgid = GridView1.DataKeys[e.RowIndex].Values["cgid"].ToString();
            string strcon = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from ChatGroups where cgid=@cgid", con);
            cmd.Parameters.AddWithValue("@cgid", cgid);

            cmd.ExecuteNonQuery();
            lblmsg.Text = "Deleted Successfully";
            con.Close();
            GridView1.EditIndex = -1;
            FillGv();
        }
    }
}