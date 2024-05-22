<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ViewMember1.aspx.cs" Inherits="NGO_PROJ.ViewMember1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table class="w-100">
        <tr>
            <th>Intrested Members for Match &nbsp;
                <asp:Label ID="Label6" runat="server" ForeColor="#0033CC" Text="Label"></asp:Label>
            </th>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matchid">
                    <Columns>
                         <asp:TemplateField HeaderText="Match Title">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fname">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lname">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"  Text='<%# Eval("Lname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact no">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"  Text='<%# Eval("Contactno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label>
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
