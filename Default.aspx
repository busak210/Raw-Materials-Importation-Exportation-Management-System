<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td style="width: 233px">&nbsp;</td>
        <td>
            <table class="nav-justified">
                <tr>
                    <td style="width: 152px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 152px">
                        &nbsp;</td>
                    <td>
                        <table cellpadding="4px" cellspacing="4px" class="style16" style="border: medium solid #F8F8F8; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; height: 494px; background-color: #F8F8F8; width: 384px;">
                            <tr>
                                <td colspan="4" style="border: thin solid #FFFFFF; background-color: #F8F8F8" class="text-center">
                                    <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/images/logo.png" Width="62px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="border: thin solid #F8F8F8; background-color: #F8F8F8" class="text-center">Welcome</td>
                            </tr>
                            <tr>
                                <td colspan="4" style="border: thin solid #F8F8F8; background-color: #F8F8F8" class="text-center">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 55px; height: 24px;">
                                    </td>
                                <td colspan="2" style="height: 24px">
                                    username</td>
                                <td style="height: 24px"></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 55px; color: #000000; height: 21px;">
                                </td>
                                <td class="text-left" colspan="2" style="height: 21px">
                                    <asp:TextBox ID="txtuser" runat="server" Width="254px" CssClass="form-control" Height="20px"></asp:TextBox>
                                </td>
                                <td style="height: 21px"></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 55px; height: 10px;">
                                </td>
                                <td colspan="2" style="height: 10px">
                                    Password</td>
                                <td style="height: 10px"></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 55px">
                                    &nbsp;</td>
                                <td class="text-left" colspan="2">
                                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="253px" CssClass="form-control" Height="20px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 55px">
                                    &nbsp;</td>
                                <td class="text-center">
                                    <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Size="Small" Height="36px" onclick="btnlogin_Click" Text="login" Width="66px" CssClass="btn-lg" BackColor="#666666" BorderColor="#666666" ForeColor="White" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 55px">&nbsp;</td>
                                <td class="text-center" colspan="2">
                                &nbsp;
                                    &nbsp;&nbsp;&nbsp;
                                    </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 55px">&nbsp;</td>
                                <td colspan="2">
                                    <asp:Label ID="lblmsg" runat="server" ForeColor="Black" CssClass="text-success"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 55px">&nbsp;</td>
                                <td colspan="2" style="color: #000000">
                                    *<asp:HyperLink ID="HyperLink1" runat="server" CssClass="style17" ForeColor="Black" NavigateUrl="~/passReset.aspx" style="color: Black" Font-Size="Small">Username/Password Reset</asp:HyperLink>
                                    <br />
                                    *<asp:HyperLink ID="HyperLink2" runat="server" CssClass="style17" ForeColor="Black" NavigateUrl="#" style="color: Black" Font-Size="Small">Don&#39;t have an accoun? Sign up</asp:HyperLink>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>









