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
    public partial class Registration : System.Web.UI.Page
    {
        string fileTitle11;
        protected void Page_Load(object sender, EventArgs e)
        {

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
                if (r1["username"].ToString() == txtUname.Text && r1["pass"].ToString() == txtpassowrd.Text)
                {
                    flag = true;
                }
            }
            con.Close();

            if (flag == true)
            {
                lblmsg.Text = "wrong username or password";
                txtpassowrd.Text = "";
                txtUname.Text = "";
            }
            else
            {
                Session["un"] = txtUname.Text;
                InsertFunction();
                // Response.Redirect("~/Advocate/ViewComplaints.aspx");
            }
        }

        protected void InsertFunction()
        {
            uploadimage1();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbl_MemberRegistration (img,username,pass,fname,mname,lname,email,contactno,state,city,areaname,address) values(@img,@username,@pass,@fname,@mname,@lname,@email,@contactno,@state,@city,@areaname,@address)", con);
            cmd.Parameters.AddWithValue("img", "~/image/"+fileTitle11);
            cmd.Parameters.AddWithValue("username", txtUname.Text);
            cmd.Parameters.AddWithValue("pass", txtpassowrd.Text);
            cmd.Parameters.AddWithValue("fname", txtfname.Text);
            cmd.Parameters.AddWithValue("mname", txtmname.Text);
            cmd.Parameters.AddWithValue("lname", txtlname.Text);
            cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.Parameters.AddWithValue("contactno", txtContact.Text);
            cmd.Parameters.AddWithValue("state", txtstate.Text);
            cmd.Parameters.AddWithValue("city", txtcity.Text);
            cmd.Parameters.AddWithValue("areaname", txtarea.Text);
            cmd.Parameters.AddWithValue("address", txtadd.Text);


            cmd.ExecuteNonQuery();
            con.Close();
           // lblmsg.Text = "Registration has done successfully, Creadentials are sent on yours email";
            BtnRegistration.Visible = false;
            sendEmail();
            Response.Redirect("~/indexL.aspx");
        }
        protected void sendEmail()
        {

            string mEmail = txtemail.Text;
            string mUser = txtUname.Text;
            string mpass = txtpassowrd.Text;
            MailMessage msg = new MailMessage();

            msg.From = new MailAddress("athleeteam@gmail.com");

            msg.To.Add(mEmail);

            msg.Subject = "Welcome to Athle Team";

            msg.Body = "Welcome <font color='red'>" + txtfname.Text + " " + txtlname.Text + "</font> <br/> your username is" + mUser + "and password" + mpass;

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

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            CheckUserName();
        }


        protected void uploadimage1()
        {
            string fileName = FileUpload1.PostedFile.FileName;



            string fileExtension = System.IO.Path.GetExtension(fileName);

            string fileMimeType = FileUpload1.PostedFile.ContentType;

            int fileSizeInKb = FileUpload1.PostedFile.ContentLength / 1024;
            fileTitle11 = FileUpload1.FileName;
            string[] MatchExtension = { ".jpg", ".jpeg", ".png", ".gif" };
            string[] MatchMimeType = { "image/jpeg", "image/gif", "image/png" };
            if (FileUpload1.HasFile)
            {
                if (MatchExtension.Contains(fileExtension) || MatchMimeType.Contains(fileMimeType))
                {
                    if (fileSizeInKb <= 1024)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/image/" + fileTitle11));
                    }
                    else
                    {
                        Response.Write("file Size greater than 1 Mb");
                    }

                }
                else
                {
                    Response.Write("Please Upload an .jpg,.jpeg,.gif or .png image");
                }
            }
            else
            {
                Response.Write("please Upload an image");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }
    }
}