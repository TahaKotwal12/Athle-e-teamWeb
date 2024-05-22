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
    public partial class ScheduleMatch : System.Web.UI.Page
    {
        string fileTitle11;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["un"] == null)
                {
                    Response.Redirect("~/INdex.aspx");
                }
               
            }
        }
        protected void InsertFunction()
        {
            uploadimage1();
            string un = Session["un"].ToString();
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ScheduleMAtch (username,sdate,address,landmark,no_of_players,req_details,clubname,logo,title) values(@username,@sdate,@address,@landmark,@no_of_players,@req_details,@clubname,@logo,@title)", con);
            cmd.Parameters.AddWithValue("username", un);

            cmd.Parameters.AddWithValue("sdate", Convert.ToDateTime(txtdate.Text));
            cmd.Parameters.AddWithValue("address", txtaddress.Text);
            cmd.Parameters.AddWithValue("landmark", txtlandmark.Text);
            cmd.Parameters.AddWithValue("no_of_players", txtplayers.Text);
            cmd.Parameters.AddWithValue("req_details", txtdetails.Text);
            cmd.Parameters.AddWithValue("clubname", txtclubname.Text);
            cmd.Parameters.AddWithValue("logo", "~/styles/" + fileTitle11);
            cmd.Parameters.AddWithValue("title", txttitle.Text);



            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Schedule has done successfully";
            BtnRegistration.Visible = false;
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
                        FileUpload1.SaveAs(Server.MapPath("~/Styles/" + fileTitle11));
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

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            InsertFunction();
        }
    }
}