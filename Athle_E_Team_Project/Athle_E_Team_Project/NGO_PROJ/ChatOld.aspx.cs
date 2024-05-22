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
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDatalist();
                
            }
        }
        protected void FillDatalist()
        {

            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select username,MId,img,fname+' '+lname as fullname from Tbl_MemberRegistration where username<>'"+Session["un"].ToString()+"'", con);
            da.Fill(ds, "t1");
            DataList1.DataSource = ds.Tables["t1"];
            DataList1.DataBind();
            con.Close();
        }

       
        protected void FillDatalist2()
        {

            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            //SqlDataAdapter da = new SqlDataAdapter("select * from shownintrest a,tbl_MemberRegistration b where a.username=b.username and  matchid=" + mid, con);
            SqlDataAdapter da = new SqlDataAdapter("select msg,cdate,chattousername,chatbyusername from chatmsg where chattousername='" + HiddenField2.Value.ToString()+"' and chatbyusername='"+Session["un"].ToString()+"'", con);
            da.Fill(ds, "t1");
            DataList2.DataSource = ds.Tables["t1"];
            DataList2.DataBind();
            con.Close();
        }
        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
          
            HiddenField chattousername = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField1");
            HiddenField img = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField3");
            LinkButton fullname = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            MultiView1.ActiveViewIndex = 0;
            //LinkButton cid = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            LinkButton cid = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            HiddenField2.Value = chattousername.Value.ToString();
            Image2.ImageUrl = img.Value.ToString();
            Label2.Text = fullname.Text;
            //string BtnArgument = cid.CommandArgument.ToString();
            FillDatalist2();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ChatMsg (msg,cdate,chatbyusername,chattousername) values(@msg,@cdate,@chatbyusername,@chattousername)", con);
            cmd.Parameters.AddWithValue("msg", txtmsg1.Text);
            cmd.Parameters.AddWithValue("cdate", DateTime.Now);
            cmd.Parameters.AddWithValue("chatbyusername", Session["un"].ToString());
            cmd.Parameters.AddWithValue("chattousername", HiddenField2.Value.ToString());



            cmd.ExecuteNonQuery();
            con.Close();
            FillDatalist2();
        }
    }
}