<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="rpmn.aspx.cs" Inherits="rpmn" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="MainContent">
    <table style="width: 100%">
        <tr>
            <td style="width: 60px; vertical-align: top;">&nbsp;</td>
            <td style="vertical-align: top">
                <table style="width: 104%">
                    <tr>
                        <td>
                            <table cellpadding="4px" cellspacing="4px" class="style5" style="font-family: Andalus; font-size: small" width="97%">
                                <tr>
                                    <td valign="top" style="font-family: Cambria, Cochin, Georgia, Times, &quot;Times New Roman&quot;, serif; height: 119px;">
                                        <table class="style6" style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: medium; width: 1091px; height: 55px;">
                                            <tr>
                                                <td class="text-right" style="border-right: thin solid #FFFFFF; width: 255px; height: 29px;">
                                                    <asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/images/profileed.png" Width="26px" />
                                                </td>
                                                <td class="style9" style="border-left: thin solid #FFFFFF; border-right: thin solid #FFFFFF; border-top: thin solid #FFFFFF; border-bottom: thin solid #000000; width: 850px; height: 29px;">
                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Welcome "></asp:Label>
                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="border-right: thin solid #000000; vertical-align: top; width: 255px;">
                                                    <table style="width: 126%; height: 449px;">
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td colspan="2" style="border-top: thin solid #CCCCCC; border-bottom: thin solid #CCCCCC; font-size: large; border: thin groove #CCCCCC;"><strong><em>Dashboard Menue</em></strong></td>
                                                        </tr>
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/rnped.jpg" Height="26px" Width="33px" AlternateText="Raw Materials &amp; Products" PostBackUrl="~/search.aspx" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/main.aspx" Width="249px">Home</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/rnd4ED.png" Height="30px" Width="33px" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink2" runat="server">Research &amp; Developments</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/col3ed.png" Height="25px" Width="27px" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink3" runat="server">Government Organizations</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/sectored.png" Height="25px" Width="27px" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink4" runat="server" Width="255px">National/International Collaborators</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/insted.png" Height="25px" Width="27px" />
                                                            </td>
                                                            <td class="text-left">
                                                                <asp:HyperLink ID="HyperLink5" runat="server">Business Communities</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/imported.png" Height="25px" Width="27px" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink6" runat="server">Importers/Exporters</asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">&nbsp;</td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 48px">&nbsp;</td>
                                                            <td class="text-left">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="style9" style="padding: 2px; margin: 2px; border: thin ridge #CCCCCC; text-align: left; background-color: #DDDDDD; height: 650px; vertical-align: top; width: 850px;">
                                                    <table style="padding: 6px; margin: 6px; width: 111%; border-spacing: 10px; height: 601px;">
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; height: 120px">
                                                                <table align="center" class="label-default" style="width: 97%; height: 213px">
                                                                    <tr>
                                                                        <td class="text-left" style="padding: 4px; margin: 4px; border: medium none #CCCCCC; vertical-align: top;">
                                                                            <table style="padding: 4px; margin: 4px; width: 97%; height: 192px; background-color: #FBFBFB;">
                                                                                <tr>
                                                                                    <td class="text-center" style="padding: 2px; margin: 2px; background-color: #FFFFFF" colspan="10"><strong>IMPORTATION OF RAW MATERIALS &amp; PRODUCTS</strong></td>
                                                                                </tr>
                                                                                <%--<tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #F0F0F0; " colspan="10">&nbsp;</td>
                                                                                </tr>--%>
                                                                                <tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #FFFFFF; height: 234px;" colspan="10">
                                                                                        <table style="padding: 4px; margin: 4px; width: 98%; height: 25px; font-family: 'Courier New', Courier, monospace; font-size: small;">
                                                                                            <tr>
                                                                                                <td style="border: medium solid #999999;" class="text-left"><strong>HS2(PRODUCT GROUP):</strong></td>
                                                                                                <td style="border: medium solid #999999;" class="text-left">
                                                                                                    <asp:DropDownList ID="dplgname" runat="server" Height="20px" Width="350px" AutoPostBack="True"  Font-Size="X-Small" OnSelectedIndexChanged="dplgname_SelectedIndexChanged" >                                                                                                       <asp:ListItem Text="Please Select One..."></asp:ListItem>
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td style="border: medium solid #FFFFFF; padding: 2px; margin: 2px; background-color: #999999; " class="text-left" rowspan="3">
                                                                                                    <strong>
                                                                                                <asp:RadioButtonList ID="rlitems" runat="server" CellPadding="2" CellSpacing="4" Width="168px" style="font-size: 12px" AutoPostBack="True" OnSelectedIndexChanged="rlitems_SelectedIndexChanged">
                                                                                                    <asp:ListItem>Trade Qty &amp; Values</asp:ListItem>
                                                                                                    <asp:ListItem>Importers&#39; Profile</asp:ListItem>
                                                                                                    <asp:ListItem>Country of Supply</asp:ListItem>
                                                                                                    <asp:ListItem>Country of Origin</asp:ListItem>
                                                                                                </asp:RadioButtonList>
                                                                                                    </strong>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border: medium solid #999999;" class="text-left"><strong>HS4(PRODUCT CLASS) :</strong></td>
                                                                                                <td style="border: medium solid #999999;" class="text-left">
                                                                                                    <asp:DropDownList ID="dplccname" runat="server" Height="16px" Width="350px" AutoPostBack="True" Font-Size="X-Small" OnSelectedIndexChanged="dplccname_SelectedIndexChanged">
                                                                   
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border: medium solid #999999;" class="text-left"><strong>HS10(PRODUCT):</strong></td>
                                                                                                <td style="border: medium solid #999999;" class="text-left">
                                                                                                    <asp:DropDownList ID="dplcomname" runat="server" Height="16px" Width="350px" AutoPostBack="True" Font-Size="X-Small">
                                                                                                   
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td class="text-left" colspan="2">&nbsp;</td>
                                                                                            </tr>--%>
                                                                                            <tr>
                                                                                                <td style="padding: 4px; margin: 4px; background-color: #F0F0F0; font-size: medium; color: #000000; height: 20px;" class="text-left" colspan="3"><strong>Statistics</strong></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border: thin solid #666666; padding: 4px; margin: 4px; background-color: #FFFFFF; font-size: medium; color: #666666; height: 34px;" class="text-left" colspan="3">
                                                                                                    <table style="border: medium solid #FFFFFF; width: 100%; font-size: small; font-weight: bolder; background-color: #CCCCCC; color: #FFFFFF; font-family: 'Arial Black';">
                                                                                                        <tr>
                                                                                                            <td style="border: thin none #FFFFFF; width: 159px;" class="text-right"><span style="font-weight: normal">No.of Importer : </span></td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center">
                                                                                                                <asp:Label ID="lblimporte" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                            </td>
                                                                                                            <td class="text-right" style="border: thin none #FFFFFF"><strong>No of Country of Supply :</strong></td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center"><strong>
                                                                                                                <asp:Label ID="lblscountry" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                                </strong></td>
                                                                                                            <td class="text-right" style="border: thin none #FFFFFF"><strong>Trade Values :</strong></td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center">
                                                                                                                <asp:Label ID="lbltradeV" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="border: thin none #FFFFFF; width: 159px;" class="text-right">No. of Years Involved:</td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center"><strong>
                                                                                                                <asp:Label ID="lbltyear" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                                </strong></td>
                                                                                                            <td class="text-right" style="border: thin none #FFFFFF"><strong>No. of Country of Origin :</strong></td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center"><strong>
                                                                                                                <asp:Label ID="lblocountry" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                                </strong></td>
                                                                                                            <td class="text-right" style="border: thin none #FFFFFF"><strong>Trade Quantity :</strong></td>
                                                                                                            <td style="border: thin none #FFFFFF" class="text-center"></strong>
                                                                                                                <asp:Label ID="lbltradeQ" runat="server" Text="Label" style="color: #000000"></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                
                                                                                <tr>
                                                                                    <td class="text-center" style="height: 250px; vertical-align: top;" colspan="10">&nbsp;
                                                                                        
                                                                                    <table align="center" class="label-default" style="width: 97%; height: 213px">
                                                                    <tr>
                                                                        <td class="text-left" style="padding: 4px; margin: 4px; border: medium none #CCCCCC; vertical-align: top;">
                                                                            <table style="padding: 4px; margin: 4px; width: 97%; height: 192px; background-color: #FBFBFB;">
                                                                                <tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #999999;"><strong>Tabular &amp; Graphical Representation </strong></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-center" style="height: 200px; vertical-align: top;">&nbsp;
                                                                                    <table class="label-default" style="width: 96%; height: 215px">
                                                                                      <%--  <tr>
                                                                                            <td class="text-left" style="background-color: #FFFFFF" colspan="2"><strong>Tabular Representation</strong></td>
                                                                                        </tr>--%>
                                                                                        <tr>
                                                                                            <td class="text-left" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #999999" colspan="5">
                                                                                                <strong>Tabular Representation</strong></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="text-left" style="background-color: #E4E4E4">
                                                                                                <strong>Range :</strong></td>
                                                                                            <td class="text-left" style="background-color: #E4E4E4; width: 30px;">
                                                                                                <strong>From</strong></td>
                                                                                            <td class="text-left" style="background-color: #E4E4E4; width: 157px;">
                                                                                                <asp:DropDownList ID="dplfrom" runat="server" Width="166px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                            <td class="text-right" style="background-color: #E4E4E4; width: 170px;">
                                                                                                <strong>To</strong></td>
                                                                                            <td class="text-left" style="background-color: #E4E4E4; width: 170px;">
                                                                                                <asp:DropDownList ID="dplTo" runat="server" Width="166px">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;">
                                                                                                <strong>
                                                                                                <asp:Label ID="lblduration" runat="server" Text="Duration :" Visible="False"></asp:Label>
                                                                                                </strong></td>
                                                                                            <td style="border-top: thin solid #FFFFFF; text-align: justify;" colspan="4">
                                                                                                <asp:RadioButtonList ID="rlduration" runat="server" CellPadding="2" CellSpacing="4" RepeatDirection="Horizontal" Width="487px" Visible="False">
                                                                                                    <asp:ListItem>Month</asp:ListItem>
                                                                                                    <asp:ListItem>Quarter</asp:ListItem>
                                                                                                    <asp:ListItem>Annual</asp:ListItem>
                                                                                                    <asp:ListItem>All</asp:ListItem>
                                                                                                </asp:RadioButtonList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;">
                                                                                                <strong>
                                                                                                <asp:Label ID="lblformat" runat="server" Text="Format :" Visible="False"></asp:Label>
                                                                                                </strong></td>
                                                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;" colspan="2">
                                                                                                <asp:RadioButtonList ID="rllisttrac" runat="server" CellPadding="2" CellSpacing="4" RepeatDirection="Horizontal" Width="221px" Visible="False">
                                                                                                    <asp:ListItem>List</asp:ListItem>
                                                                                                    <asp:ListItem>Transactions</asp:ListItem>
                                                                                                </asp:RadioButtonList>
                                                                                            </td>
                                                                                            <td class="text-right" style="border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;" colspan="2">
                                                                                                <asp:Button ID="btngetrec" runat="server" OnClick="btngetrec_Click" Text="Get Record(s)" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="padding: 4px; margin: 4px; background-color: #CCCCCC;" colspan="5">
                                                                                                

                                                                                                <table style="width: 95%; background-color: #FFFFFF; height: 255px;">
                                                                                                    <tr>
                                                                                                        <td class="text-left">
                                                                                                            <div style="overflow-y: scroll; height: 232px; width: 652px;">
                                                                                                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#0000CC" Height="224px" style="margin-top: 0px; font-size: small; color: #000000;" Width="643px" PageSize="15" EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left" ShowFooter="True">
                                                                                                    <HeaderStyle  BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" ForeColor="#666666" BorderWidth="2px" Font-Names="Times New Roman" Font-Size="X-Small" Height="15px" />
                                                                                                    <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#999999" Font-Size="Small" Height="20px" />
                                                                                                </asp:GridView>
                                                                                                            </div>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                

                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="graphical representationtabular representation:; background-color: #666666;" class="text-left" colspan="5">
                                                                                                

                                                                                                <strong>Graphical Representation</strong></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="text-left" style="background-color: #E4E4E4">
                                                                                                Chart Type :</td>
                                                                                            <td class="text-left" style="background-color: #E4E4E4; width: 170px;" colspan="4">
                                                                                                <asp:RadioButtonList ID="rld" runat="server" CellPadding="2" CellSpacing="4" RepeatDirection="Horizontal" Width="452px">
                                                                                                    <asp:ListItem>Bar</asp:ListItem>
                                                                                                    <asp:ListItem>Pie</asp:ListItem>
                                                                                                    <asp:ListItem>Line</asp:ListItem>
                                                                                                </asp:RadioButtonList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        
                                                                                        <tr>
                                                                                            <td style="padding: 4px; margin: 4px; background-color: #CCCCCC;" colspan="5">
                                                                                                

                                                                                                <table style="width: 95%; background-color: #FFFFFF; height: 217px;">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <div style="overflow-y: scroll; height: 212px; width: 625px;">
                                                                                                            </div>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                

                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>

                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                                        
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        
                                                        
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: right">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">

                    <p style="color: #333333; font-family: 'Times New Roman', Times, serif; font-size: x-small; text-align: center;"><span class="auto-style2">DESIGNED BY</span><span class="text-muted">: Busak Technology</span></p>
                </asp:Content>


