<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ScheduleMatch.aspx.cs" Inherits="NGO_PROJ.ScheduleMatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
              
           

               
                <table  >
                    <tr>
                        <td>&nbsp;</td>
                        <th colspan="3"> <h4>&nbsp;Schedule Match</h4>
              <h6 class="font-weight-light">&nbsp;</h6></th>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style1">
                            Match Title</td>
                        <td class="auto-style1"> Club Name</td>
                        <td class="auto-style1"> &nbsp;Match Date</td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <div class="form-group">
                  
                  <asp:TextBox ID="txttitle" runat="server" class="form-control form-control-lg" placeholder="Title" ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                    <asp:TextBox ID="txtclubname" runat="server" class="form-control form-control-lg" placeholder="Club Name" ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                  <asp:TextBox ID="txtdate" runat="server" class="form-control form-control-lg" placeholder="Date" ></asp:TextBox>
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Address</td>
                        <td>Landmark</td>
                        <td>No of Players </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtaddress" runat="server" class="form-control form-control-lg" placeholder="Address " TextMode="MultiLine" ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                    <asp:TextBox ID="txtlandmark" runat="server" class="form-control form-control-lg" placeholder="Land Mark" Width="258px" ></asp:TextBox>
                </div></td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtplayers" runat="server" class="form-control form-control-lg" placeholder="Players " ></asp:TextBox>
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Requrement Details</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtdetails" runat="server" class="form-control form-control-lg" placeholder="Details " TextMode="MultiLine" ></asp:TextBox>
                </div></td>
                        <td><div class="form-group">
                  
                </div></td>
                        <td><div class="form-group">
                  
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Upload Club Logo</td>
                        <td></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="3">
                  
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                     <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><div class="form-group">
                  
                </div>
                <div class="form-group">
                  
                </div>
                <div class="mt-3">
                    <%-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../dashboard.aspx">SIGN IN</a>--%>

                    <asp:Button ID="BtnRegistration" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Submit" OnClick="BtnRegistration_Click" />
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                 
                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                  </div>
               
                </div></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="3">  </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
           

               
               
             
                
               
             
                

                

           
               
               
             































</asp:Content>

