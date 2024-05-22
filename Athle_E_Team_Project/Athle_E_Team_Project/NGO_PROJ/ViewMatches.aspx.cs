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
    public partial class ViewMatches : System.Web.UI.Page
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


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label address = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            FindUserAddress();
            Session["sportaddress"] = address.Text;

            //   string useradd = HiddenField1.Value.ToString();
            Session["useradd"] = HiddenField1.Value.ToString();
            Response.Redirect("~/member/gmap.aspx");

            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //INtreset
           
            Label address = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            string mid = GridView1.DataKeys[e.RowIndex].Values["matchid"].ToString();
            string strcon = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into  shownintrest (username,matchid) values(@username,@matchid)", con);
            cmd.Parameters.AddWithValue("@username", Session["un"].ToString());
            cmd.Parameters.AddWithValue("@matchid", mid);
            cmd.ExecuteNonQuery();
            // lblmsg.Text = "Deleted Successfully";
            con.Close();

        }

        protected void FindUserAddress()
        {
            string un = Session["un"].ToString();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_MemberRegistration", con);
            da.Fill(ds, "t1");
            Boolean flag = false;
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if (r1["username"].ToString() == un)
                {
                    string address = r1["address"].ToString();
                    string area = r1["areaname"].ToString();
                    string city = r1["city"].ToString();
                    string useraddress = address + "," + area + "," + city;
                    HiddenField1.Value = useraddress;
                    //Session["useraddress1"] = useraddress;


                }
            }
        }
    }
}