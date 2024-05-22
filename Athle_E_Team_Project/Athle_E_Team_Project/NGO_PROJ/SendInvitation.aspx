<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="SendInvitation.aspx.cs" Inherits="NGO_PROJ.SendInvitation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Send Invitation as<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Player</asp:ListItem>
                <asp:ListItem>Member</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HiddenField ID="HiddenField2" runat="server" />
                <asp:HiddenField ID="HiddenField6" runat="server" />
                <asp:HiddenField ID="HiddenField4" runat="server" />
                <asp:HiddenField ID="HiddenField5" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><asp:DataList ID="DataList1" runat="server" OnUpdateCommand="DataList1_UpdateCommand" RepeatColumns="5" RepeatDirection="Horizontal" Width="900px">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl='<%# Eval("img") %>' Width="75px" />
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("username") %>' />
                                    <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fullname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update" Text="Invite"></asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
