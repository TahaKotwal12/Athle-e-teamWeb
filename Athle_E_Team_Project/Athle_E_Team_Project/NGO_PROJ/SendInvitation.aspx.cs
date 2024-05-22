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
using System.Net.Mail;
using System.Net;
namespace NGO_PROJ
{
    public partial class SendInvitation : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("select email,username,MId,img,fname+' '+lname as fullname from Tbl_MemberRegistration where username<>'" + Session["un"].ToString() + "'", con);
            da.Fill(ds, "t1");
            DataList1.DataSource = ds.Tables["t1"];
            DataList1.DataBind();
            con.Close();
        }

        protected void CheckUserName()
        {
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_memberRegistration", con);
            da.Fill(ds, "t1");
            Boolean flag = false;
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if (r1["username"].ToString() == Session["un"].ToString())
                {
                    HiddenField6.Value = r1["fname"].ToString() + " " + r1["lname"].ToString();
                }
            }
            con.Close();

            //
        }
        protected void sendEmail()
        {

            string mEmail = HiddenField5.Value.ToString();
          //  string mUser = txtUname.Text;
           // string mpass = txtpassowrd.Text;
            MailMessage msg = new MailMessage();

            msg.From = new MailAddress("athleeteam@gmail.com");

            msg.To.Add(mEmail);

            msg.Subject = "Invitation as "+RadioButtonList1.SelectedItem.ToString();

            msg.Body = "Hello <font color='red'>" + HiddenField4.Value.ToString() + "</font> <br/> You Invited as  "+RadioButtonList1.SelectedItem.ToString()+"<br/> From "+HiddenField6.Value.ToString();

            msg.IsBodyHtml = true;


            SmtpClient smt = new SmtpClient();

            smt.Host = "smtp.gmail.com";
        
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "athleeteam@gmail.com";
            ntwd.Password = "brci xhcc leag kkmo";
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);



        }
        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            HiddenField chattousername = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField1");
            HiddenField email = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField3");
            HiddenField5.Value = email.Value.ToString();
            //  HiddenField img = (HiddenField)DataList1.Items[e.Item.ItemIndex].FindControl("HiddenField3");
            Label fullname = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
            HiddenField4.Value = fullname.Text;
          //  MultiView1.ActiveViewIndex = 0;
            //LinkButton cid = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            LinkButton cid = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("LinkButton1");
            HiddenField2.Value = chattousername.Value.ToString();
            //  Image2.ImageUrl = img.Value.ToString();
            //  Label2.Text = fullname.Text;
            CheckUserName();
            sendEmail();
        }
    }
}