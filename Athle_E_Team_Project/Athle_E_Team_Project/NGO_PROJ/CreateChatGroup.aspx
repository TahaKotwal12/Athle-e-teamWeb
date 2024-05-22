<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="CreateChatGroup.aspx.cs" Inherits="NGO_PROJ.CreateChatGroup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:40%;text-align:center">
        <tr>
            <td>

           
              <h4>Athle E Team Platform </h4>
              <h6 class="font-weight-light">Create New Chat Group</h6>
           
                <div class="form-group">
                
          <asp:TextBox ID="txtgroupname" runat="server" class="form-control form-control-lg" placeholder="Chat Group Name"></asp:TextBox>
                </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="txtdetails" class="form-control form-control-lg" runat="server" placeholder="Chat Group Details"></asp:TextBox>   
                </div>
                <div class="mt-3">
                    <%-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../dashboard.aspx">SIGN IN</a>--%>

                    
                </div>
                 <div class="mt-3">
                    <%-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../dashboard.aspx">SIGN IN</a>--%>

                    <asp:Button ID="BtnRegistration" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Save " OnClick="BtnRegistration_Click" />
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                   
                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                  </div>
               
                </div>
               
               
             

                 </td>
        </tr>
        <tr>
            <td>

           
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cgid" OnRowUpdating="GridView1_RowUpdating" Width="700px">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("cgid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Room Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ChatGroupName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Room Details">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Details") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                      <asp:TemplateField HeaderText="Created By">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("CreatedBy") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Update" Text="Delete"  class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
               
               
             

                 </td>
        </tr>
        <tr>
            <td>

           
                &nbsp;</td>
        </tr>
    </table>





























           
</asp:Content>
