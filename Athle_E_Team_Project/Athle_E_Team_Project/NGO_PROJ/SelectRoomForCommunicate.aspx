<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="SelectRoomForCommunicate.aspx.cs" Inherits="NGO_PROJ.SelectRoomForCommunicate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>

                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />

            </td>
        </tr>
        <tr>
            <td>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cgid" OnRowUpdating="GridView1_RowUpdating" Width="100%">
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
                                <asp:Button ID="Button1" runat="server" CommandName="Update" Text="Select Room" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
    </table>

</asp:Content>
