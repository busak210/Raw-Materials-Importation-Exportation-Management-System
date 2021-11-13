<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<script runat="server">

</script>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 66px; vertical-align: top;">&nbsp;</td>
            <td style="vertical-align: top">
                <table style="width: 104%">
                    <tr>
                        <td>
                            <table cellpadding="4px" cellspacing="4px" class="style5" style="font-family: Andalus; font-size: small" width="97%">
                                <tr>
                                    <td valign="top" style="font-family: Cambria, Cochin, Georgia, Times, &quot; times new roman&quot; , serif; height: 119px;">
                                        <table class="style6" style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: medium; width: 1091px; height: 55px;">
                                            <tr>
                                                <td class="text-right" style="border-right: thin solid #FFFFFF; width: 299px;">
                                                    <asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/images/profileed.png" Width="26px" />
                                                </td>
                                                <td class="style9" style="border-left: thin solid #FFFFFF; border-right: thin solid #FFFFFF; border-top: thin solid #FFFFFF; border-bottom: thin solid #000000; width: 850px;">
                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Style="color: #000000; font-size: small;" Text="Welcome  Mr./Mrs "></asp:Label>
                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Style="color: #000000; font-size: small;" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="border-right: thin solid #000000; vertical-align: top; width: 299px;">
                                                    <table style="width: 126%; height: 449px;">
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td colspan="2" style="border-top: thin solid #CCCCCC; border-bottom: thin solid #CCCCCC; font-size: large; border: thin groove #CCCCCC;"><strong><em>Dashboard Menue</em></strong></td>
                                                        </tr>
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/rnped.jpg" Height="26px" Width="33px" AlternateText="Raw Materials &amp; Products" PostBackUrl="~/search.aspx" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/rpmn.aspx" Width="251px">Products' Importation/Exportation</asp:HyperLink>
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
                                                    <table style="padding: 6px; margin: 6px; width: 98%; border-spacing: 10px; height: 601px;">
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-center" style="padding: 2px; margin: 2px; background-color: #FFFFFF"><strong>ANALYSIS OF IMPORTED RAW MATERIALS &amp; PRODUCTS</strong></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="height: 1px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; height: 120px">
                                                                <table style="padding: 4px; margin: 4px; width: 98%; height: 94px;">
                                                                    <tr>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <table align="center" class="text-muted" style="width: 96%; height: 68px; background-color: #FF3300">
                                                                                <tr>
                                                                                    <td style="padding: 2px; margin: 2px; width: 20px;"><strong></strong>
                                                                                        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/infored.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                    </td>
                                                                                    <td style="padding: 2px; margin: 2px">
                                                                                        <asp:Label ID="lblhs2code" runat="server" Text="Label" Style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                        <br />
                                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/hs2code.aspx" Style="font-size: small">HS2 CODE</asp:HyperLink>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2" style="padding: 2px; margin: 2px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;" class="text-center">Raw Materials Group</strong></td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; width: 211px;">
                                                                            <table align="center" style="width: 96%; height: 68px; background-color: #66CCFF">
                                                                                <tr>
                                                                                    <td style="padding: 2px; margin: 2px">
                                                                                        <table style="width: 100%">
                                                                                            <tr>
                                                                                                <td style="width: 20px" class="text-muted">
                                                                                                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/infoblueed.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <strong>
                                                                                                        <asp:Label ID="lblhs4code" runat="server" Text="Label" Style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                        <br class="text-muted" />
                                                                                                    </strong><span class="text-muted"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><span style="font-size: small"><strong>&nbsp;<asp:HyperLink ID="HyperLink10" runat="server" ForeColor="White" NavigateUrl="~/hs4code.aspx">HS4 CODE</asp:HyperLink>
                                                                                                    </strong></span></span></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="border-top: thin solid #FFFFFF; text-align: center;" class="text-muted"><strong>Raw Materials Categories</strong></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <table align="center" style="width: 96%; height: 68px; background-color: #FFFFCC">
                                                                                <tr>
                                                                                    <td style="padding: 2px; margin: 2px">
                                                                                        <table style="width: 100%">
                                                                                            <tr>
                                                                                                <td style="width: 20px; height: 49px;">
                                                                                                    <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/images/yellowinfoed.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                </td>
                                                                                                <td style="height: 49px; color: #666666; width: 120px;">
                                                                                                    <strong>
                                                                                                        <asp:Label ID="lblhs10code" runat="server" Text="Label" Style="font-size: large; color: #666666;" ForeColor="#666666" CssClass="text-muted"></asp:Label>
                                                                                                        <br style="color: #666666" />
                                                                                                        <span style="color: #666666">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                                                <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Black" Style="font-size: small" NavigateUrl="~/hs10code.aspx">HS10 CODE</asp:HyperLink>
                                                                                                        </span></strong></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="border-top: thin solid #FFFFFF; color: #666666;" class="text-center"><strong>Raw Materials</strong></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <table align="center" style="width: 96%; height: 68px; background-color: #00FFCC">
                                                                                <tr>
                                                                                    <td style="padding: 2px; margin: 2px">
                                                                                        <table style="width: 100%">
                                                                                            <tr>
                                                                                                <td style="width: 19px" class="text-muted">
                                                                                                    <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/images/grned.png" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <strong>
                                                                                                        <asp:Label ID="lblclass" runat="server" Text="Label" Style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                        <br class="text-muted" />
                                                                                                    </strong><span class="text-muted"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                                                                                                        <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="White" Style="font-size: small" NavigateUrl="~/hs2class.aspx">HS2 CLASS/RANGE</asp:HyperLink>
                                                                                                    </span></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2" style="border-top: thin solid #FFFFFF; text-align: center;" class="text-muted"><strong>Raw Material Group Classes</strong></td>
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
                                                            <td style="padding: 2px; margin: 2px; height: 230px">
                                                                <table align="center" class="label-default" style="width: 97%; height: 213px">
                                                                    <tr>
                                                                        <td class="text-left" style="padding: 4px; margin: 4px; border: medium none #CCCCCC; vertical-align: top;">
                                                                            <table style="padding: 4px; margin: 4px; width: 97%; height: 192px; background-color: #FBFBFB;">
                                                                                <tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #FFFFFF;"><strong>Graph &amp; Tabular Representation </strong></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-center" style="height: 250px; vertical-align: top;">&nbsp;
                                                                                    <table class="label-default" style="width: 96%; height: 215px">
                                                                                        <tr>
                                                                                            <td>Graphical Representation</td>
                                                                                            <td style="width: 350px">Tabular Representation</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="padding: 4px; margin: 4px; background-color: #CCCCCC;">
                                                                                                <table style="width: 98%; background-color: #FFFFFF; height: 215px;">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <asp:Chart ID="myChart" runat="server" ToolTip="Graph of Mass &amp; Value against Years">
                                                                                                                <Series>
                                                                                                                    <asp:Series BorderWidth="5" ChartArea="MainChartArea" Color="Red" IsXValueIndexed="True" Name="Categories" YValuesPerPoint="2" ChartType="StackedColumn">
                                                                                                                    </asp:Series>
                                                                                                                </Series>
                                                                                                                <ChartAreas>
                                                                                                                    <asp:ChartArea Name="MainChartArea">
                                                                                                                        <AxisY Title="Years">
                                                                                                                        </AxisY>
                                                                                                                        <AxisX Title="Quantity(KG)">
                                                                                                                        </AxisX>

                                                                                                                        <Area3DStyle Enable3D="True" />
                                                                                                                    </asp:ChartArea>
                                                                                                                </ChartAreas>
                                                                                                                <Titles>
                                                                                                                    <asp:Title Name="Raw Materials Analysis" Text="IMPORTED DATA ANALYSIS">
                                                                                                                    </asp:Title>
                                                                                                                </Titles>
                                                                                                            </asp:Chart>

                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>

                                                                                            </td>
                                                                                            <td style="width: 350px; vertical-align: middle; background-color: #CCCCCC;">
                                                                                                <table style="width: 95%; background-color: #FFFFFF; height: 292px;">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <div style="overflow-y: scroll; height: 250px; width: 330px;">
                                                                                                                <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#0000CC" Height="245px" Style="margin-top: 0px; font-size: small; color: #000000;" Width="271px" PageSize="8">
                                                                                                                    <Columns>
                                                                                                                        <asp:BoundField DataField="Year_R" HeaderText="YEAR" />
                                                                                                                        <asp:BoundField DataField="Quantity_KG" HeaderText="QUANTITY(KG)" />
                                                                                                                        <asp:BoundField ConvertEmptyStringToNull="False" DataField="Value_N" HeaderText="Value_N" />
                                                                                                                    </Columns>
                                                                                                                    <HeaderStyle BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" ForeColor="#666666" BorderWidth="2px" Font-Names="Times New Roman" Font-Size="Small" Height="20px" />
                                                                                                                    <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#999999" Height="20px" Font-Size="X-Small" />
                                                                                                                </asp:GridView>
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
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; height: 180px; vertical-align: middle;">
                                                                <table class="label-default" style="border: thin solid #E0E0E0; width: 98%; height: 150px; font-family: 'Courier New', Courier, monospace; background-color: #FFFFFF; color: #000000;">
                                                                    <tr>
                                                                        <td style="border: medium solid #E6E6E6; width: 208px; background-color: #FF3300;"><strong>
                                                                            <asp:Label ID="Label13" runat="server" BackColor="#FF3300" Font-Size="Large" ForeColor="White" Text="Tax" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                        <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Amount of Tax Generated</td>
                                                                        <td style="border: medium solid #E6E6E6"><strong>
                                                                            <asp:Label ID="lbltax" runat="server" Text="Label" Style="font-size: medium; color: #000000;" ForeColor="Black" Font-Bold="True"></asp:Label>
                                                                        </strong></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="border: medium solid #E6E6E6; width: 208px; background-color: #66CCFF;"><strong>
                                                                            <asp:Label ID="Label14" runat="server" BackColor="#66CCFF" Font-Size="Large" ForeColor="White" Text="Sectors" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                        <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Sectors deals in raw materials</td>
                                                                        <td style="border: medium solid #E6E6E6"><strong>
                                                                            <asp:Label ID="lblsector" runat="server" Text="Label" Style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="border: medium solid #E6E6E6; width: 208px; background-color: #FFFFCC;"><strong>
                                                                            <asp:Label ID="Label15" runat="server" BackColor="#FFFFCC" Font-Size="Large" ForeColor="White" Style="color: #000000" Text="Importers" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                        <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Importers that import raw materials</td>
                                                                        <td style="border: medium solid #E6E6E6"><strong>
                                                                            <asp:Label ID="lblimporte" runat="server" Text="Label" Style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="border: medium solid #E6E6E6; width: 208px; background-color: #00FFCC;"><strong>
                                                                            <asp:Label ID="Label17" runat="server" BorderColor="White" Font-Size="Large" ForeColor="White" Style="background-color: #66FFCC" Text="Supply Location" Width="220px"></asp:Label>
                                                                        </strong></td>
                                                                        <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Country of supply</td>
                                                                        <td style="border: medium solid #E6E6E6"><strong>
                                                                            <asp:Label ID="lblscountry" runat="server" Text="Label" Style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="border: medium solid #E6E6E6; width: 208px;"><strong>
                                                                            <asp:Label ID="Label16" runat="server" BorderColor="#00FF99" CssClass="label-default" Font-Size="Large" ForeColor="White" Style="color: #000000" Text="Origine Location" Width="231px"></asp:Label>
                                                                        </strong></td>
                                                                        <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Country of origine</td>
                                                                        <td style="border: medium solid #E6E6E6"><strong>
                                                                            <asp:Label ID="lblocountry" runat="server" Text="Label" Style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; height: 20px; vertical-align: middle;" class="label-default">&nbsp;</td>
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





