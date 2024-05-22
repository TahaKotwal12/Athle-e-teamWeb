<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="ChatOld.aspx.cs" Inherits="NGO_PROJ.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>
                <asp:HiddenField ID="HiddenField2" runat="server" />
                <asp:HiddenField ID="HiddenField4" runat="server" />
                <asp:DataList ID="DataList1" runat="server" OnUpdateCommand="DataList1_UpdateCommand" RepeatColumns="5" RepeatDirection="Horizontal" Width="900px">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl='<%# Eval("img") %>' Width="75px" />
                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("username") %>' />
                                    <asp:HiddenField ID="HiddenField3" runat="server" Value='<%# Eval("img") %>' />
                                  <%--  <asp:HiddenField ID="HiddenField4" runat="server" Value='<%# Eval("email") %>' />--%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update" Text='<%# Eval("fullname") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:View ID="View1" runat="server">
                                    <table class="w-100">
                                        <tr>
                                            <td>

                                                <asp:Image ID="Image2" runat="server" Height="50px" Width="50px" />

                                            </td>
                                        </tr>
                                         <tr>
                                            <td>

                                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DataList ID="DataList2" runat="server">
                                                    <ItemTemplate>
                                                        <table class="w-100">
                                                            <tr>
                                                                <td>
                                                                    Chat to 
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("chattousername") %>'></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Chat by
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("chatbyusername") %>'></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("msg") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtmsg1" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="Post" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" Width="120px" OnClick="Button1_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
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
                </asp:MultiView>
            </td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
