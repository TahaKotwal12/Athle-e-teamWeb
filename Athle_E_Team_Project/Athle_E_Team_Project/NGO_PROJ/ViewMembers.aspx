<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ViewMembers.aspx.cs" Inherits="NGO_PROJ.ViewMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="w-100">
        <tr>
            <th>View Matches</th>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matchid" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("sdate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"  Text='<%# Eval("title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Club Name">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"  Text='<%# Eval("clubname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Landmark">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("landmark") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText=" Players">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("no_of_players") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Details">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("req_details") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="75px" Width="75px" ImageUrl='<%# Eval("logo") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <ItemTemplate>
                                <asp:Button ID="Button1" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="View Intrested Members" CommandName="Update" />
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
