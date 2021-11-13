<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hs2code.aspx.cs" Inherits="imprest" %>

 

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <table style="width: 100%">
    <tr>
        <td style="width: 173px; vertical-align: top;" rowspan="4">&nbsp;</td>
        <td style="vertical-align: top" rowspan="4">
            <table style="width: 104%">
                <tr>
                    <td>
                        <table cellpadding="4px" cellspacing="4px" class="style5" style="font-family: Andalus; font-size: small" width="97%">
                            <tr>
                                <td valign="top" style="font-family: Cambria, Cochin, Georgia, Times, &quot;Times New Roman&quot;, serif; height: 119px;">
                                    <table class="style6" style="color: #000000; font-family: 'Times New Roman', Times, serif; font-size: medium; width: 1091px; height: 55px;">
                                        <tr>
                                            <td class="text-right" style="border-right: thin solid #FFFFFF; width: 255px;">
                                                <asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/images/profileed.png" Width="26px" />
                                            </td>
                                            <td class="style9" style="border-left: thin solid #FFFFFF; border-right: thin solid #FFFFFF; border-top: thin solid #FFFFFF; border-bottom: thin solid #000000; width: 850px;">
                                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Welcome  Mr./Mrs "></asp:Label>
                                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-center" style="border-right: thin solid #000000; vertical-align: top; width: 255px;">
                                                <table style="width: 100%; height: 449px;">
                                                    <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                        <td colspan="2" style="border-top: thin solid #CCCCCC; border-bottom: thin solid #CCCCCC; font-size: large; border: thin groove #CCCCCC;"><strong><em>Dashboard Menue</em></strong></td>
                                                    </tr>
                                                    <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                        <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/rnped.jpg" Height="26px" Width="33px" AlternateText="Raw Materials &amp; Products" PostBackUrl="~/search.aspx" />
                                                        </td>
                                                        <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/search.aspx">Raw Materials &amp; Products</asp:HyperLink>
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
                                                            <asp:HyperLink ID="HyperLink3" runat="server">Collaborators</asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/sectored.png" Height="25px" Width="27px" />
                                                        </td>
                                                        <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <asp:HyperLink ID="HyperLink4" runat="server">Sectors</asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                        <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/insted.png" Height="25px" Width="27px" />
                                                        </td>
                                                        <td class="text-left">
                                                            <asp:HyperLink ID="HyperLink5" runat="server">Research Institutions</asp:HyperLink>
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
                                                        <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/mdased.png" Height="25px" Width="27px" />
                                                        </td>
                                                        <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <asp:HyperLink ID="HyperLink7" runat="server">MDAs</asp:HyperLink>
                                                        </td>
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
                                                        <td class="text-center" style="padding: 2px; margin: 2px; background-color: #FFFFFF"><strong>IMPORTED RAW MATERIALS &amp; PRODUCTS GROUPS</strong></td>
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
                                                                                    <asp:Label ID="lblhs2code" runat="server" Text="Label" style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" style="font-size: small" NavigateUrl="~/hs2code.aspx">HS2 CODE</asp:HyperLink>
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
                                                                                                <asp:Label ID="lblhs4code" runat="server" Text="Label" style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                <br class="text-muted" />
                                                                                                </strong><span class="text-muted"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> <span style="font-size: small"><strong>&nbsp;<asp:HyperLink ID="HyperLink10" runat="server" ForeColor="White" NavigateUrl="~/hs4code.aspx">HS4 CODE</asp:HyperLink>
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
                                                                                                <asp:Label ID="lblhs10code" runat="server" Text="Label" style="font-size: large; color: #666666;" ForeColor="#666666" CssClass="text-muted"></asp:Label>
                                                                                                <br style="color: #666666" />
                                                                                                <span style="color: #666666">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                                                <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Black" style="font-size: small" NavigateUrl="~/hs10code.aspx">HS10 CODE</asp:HyperLink>
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
                                                                                                <asp:Label ID="lblclass" runat="server" Text="Label" style="font-size: large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                <br class="text-muted" />
                                                                                                </strong><span class="text-muted"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> 
                                                                                                <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="White" style="font-size: small" NavigateUrl="~/hs2class.aspx">HS2 CLASS/RANGE</asp:HyperLink>
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
                                                            <table align="center" class="label-default" style="width: 98%; height: 213px">
                                                                <tr>
                                                                    <td class="text-left" style="padding: 4px; margin: 4px; border: medium none #CCCCCC; vertical-align: top;">
                                                                        <table style="padding: 4px; margin: 4px; width: 97%; height: 192px; background-color: #FBFBFB;">
                                                                            <tr>
                                                                                <td class="text-center" colspan="4" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #FFFFFF; "><strong>HS2 Codes Records List</strong></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-right" style="border-style: solid none solid solid; border-width: thin; border-color: #CCCCCC; background-color: #FFFFFF;">Filter :</td>
                                                                                <td style="border-style: solid none solid none; border-width: thin; border-color: #CCCCCC; background-color: #FFFFFF;">
                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="HS2_Name" DataValueField="HS2_Name" Font-Names="Times New Roman" Font-Size="Small" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="500px" style="font-size: x-small">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [HS2_Name] FROM [CommodityDataSummary] ORDER BY [HS2_Name]"></asp:SqlDataSource>
                                                                                </td>
                                                                                <td class="text-right" style="border-style: solid none solid none; border-width: thin; border-color: #CCCCCC; background-color: #FFFFFF;">
                                    <asp:Button ID="btnShowPopup" runat="server" Font-Bold="True" Font-Size="Small" Height="38px"  Text="HS4 Composition" Width="31px" CssClass="btn-lg" BackColor="#666666" BorderColor="#666666" ForeColor="White" OnClick="btnShowPopup_Click" Visible="False"/>
                                                                                    </td>
                                                                                <td style="border-style: solid solid solid none; border-width: thin; border-color: #CCCCCC; background-color: #FFFFFF;">
                                    <asp:Button ID="btnShowPopup2" runat="server" Font-Bold="True" Font-Size="Small" Height="38px"  Text="View  Composition Details" Width="185px" CssClass="btn-lg" BackColor="#666666" BorderColor="#666666" ForeColor="White" style="background-color: #660033" OnClick="btnShowPopup2_Click" />
                                                                                    </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="text-center" colspan="4" style="height: 250px; vertical-align: top;">&nbsp;
                                                                                    <table class="label-default" style="width: 96%; height: 155px">
                                                                                        <tr>
                                                                                            <td style="width: 410px">List Representation</td>
                                                                                            <td style="width: 350px">Graphical Representation</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="padding: 4px; margin: 4px; background-color: #CCCCCC; width: 410px;">
                                                                                                <table style="width: 98%; background-color: #FFFFFF; height: 387px;">
                                                                                                    <tr>
                                                                                                        <td style="vertical-align: top" class="text-left">
                                                                                               <div style="overflow-y:scroll; height:510px; width:400px;">
                                                                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#0000CC" Height="498px" style="margin-top: 0px; font-size: small; color: #000000;" Width="402px" PageSize="15" EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left" ShowFooter="True">
                                                                                                    <Columns>

                                               
                                                                                                        <asp:BoundField DataField="HS2" HeaderText="HS2 CODE" >
                                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                                        </asp:BoundField>
                                                                                                        <asp:BoundField DataField="HS2_Name" HeaderText="HS2 NAMES" />
                                                                                                        
                                                                                                    </Columns>
                                                                                                    <HeaderStyle  BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" ForeColor="#666666" BorderWidth="2px" Font-Names="Times New Roman" Font-Size="X-Small" Height="15px" />
                                                                                                    <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#999999" Font-Size="Small" Height="20px" />
                                                                                                </asp:GridView>
                                                                                                </div>
                                                                                                                    </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                
                                                                                            </td>
                                                                                            <td style="width: 350px; vertical-align: middle; background-color: #CCCCCC;">
                                                                                                <table style="width: 95%; background-color: #FFFFFF; height: 292px;">
                                                                                                    <tr>
                                                                                                        <td style="background-color: #F4F4F4; padding: 2px; margin: 2px">
                                                                                                            <table style="width: 95%; height: 268px">
                                                                                                                <tr>
                                                                                                                    <td style="background-color: #FFFFFF; border: thin solid #CCCCCC; padding: 2px; margin: 2px; vertical-align: top; height: 270px;">
                                                                                    <asp:Chart ID="myChart" runat="server">
                                                                                        <series>
                                                                                            <asp:Series BorderWidth="5" ChartArea="MainChartArea" Color="Red" IsXValueIndexed="True" Name="Categories" YValuesPerPoint="2" ChartType="Pie" IsValueShownAsLabel="True" LabelBackColor="Transparent" LegendText="Years">
                                                                                            </asp:Series>
                                                                                        
                                                                                        </series>
                                                                                        <chartareas>
                                                                                            <asp:ChartArea Name="MainChartArea" Area3DStyle-Enable3D="true" >
                                                                                                 <axisy title="Years">
                                                                                                  </axisy>
                                                                                                  <axisx title="Quantity(KG)">
                                                                                                   </axisx>
                                                                                                  <area3dstyle enable3d="True" />
                                                                                             </asp:ChartArea>
                                                                                        </chartareas>
                                                                                        
                                                                                       <titles>
                                                                                           <asp:Title Name="Raw Materials Analysis" Text="HS2 CODE DATA ANALYSIS">
                                                                                            </asp:Title>
                                                                                       </titles>
                                                                                    </asp:Chart>
                                                                                
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="background-color: #FFFFFF; border: thin solid #CCCCCC; padding: 2px; margin: 2px; vertical-align: top;">
                                                                                                                        Tabular Representation</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="background-color: #FFFFFF; border: thin solid #CCCCCC; padding: 2px; margin: 2px; vertical-align: top; height: 170px;">
                                                                                                <div style="overflow-y:scroll; height:196px; width:300px;">
                                                                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#0000CC" Height="52px" style="margin-top: 0px; font-size: small; color: #000000;" Width="271px" PageSize="8" ShowFooter="True">
                                                                                                    <Columns>
                                                                                                        <asp:BoundField DataField="Year_R" HeaderText="YEAR" />
                                                                                                        <asp:BoundField DataField="Quantity_KG" HeaderText="QUANTITY(KG)" />
                                                                                                        <asp:BoundField ConvertEmptyStringToNull="False" DataField="Value_N" HeaderText="Value_N" />
                                                                                                    </Columns>
                                                                                                    <HeaderStyle BorderColor="#CCCCCC" BorderStyle="Solid" Font-Bold="True" ForeColor="#666666" BorderWidth="2px" Font-Names="Times New Roman" Font-Size="Small" Height="20px" />
                                                                                                    <RowStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#999999" Font-Size="Small" Height="20px" />
                                                                                                </asp:GridView>
                                                                                                   </div>                 </td>
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
                                                        <td style="padding: 2px; margin: 2px; height: 180px; vertical-align: middle;">
                                                            <table class="label-default" style="border: thin solid #E0E0E0; width: 98%; height: 150px; font-family: 'Courier New', Courier, monospace; background-color: #FFFFFF; color: #000000;">
                                                                <tr>
                                                                    <td style="border: medium solid #E6E6E6; width: 208px; background-color: #FF3300;"><strong>
                                                                        <asp:Label ID="Label13" runat="server" BackColor="#FF3300" Font-Size="Large" ForeColor="White" Text="Tax" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                    <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Amount of Tax Generated</td>
                                                                    <td style="border: medium solid #E6E6E6"><strong>
                                                                        <asp:Label ID="lbltax" runat="server" Text="Label" style="font-size: medium; color: #000000;" ForeColor="Black" Font-Bold="True"></asp:Label>
                                                                        </strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="border: medium solid #E6E6E6; width: 208px; background-color: #66CCFF;"><strong>
                                                                        <asp:Label ID="Label14" runat="server" BackColor="#66CCFF" Font-Size="Large" ForeColor="White" Text="Sectors" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                    <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Sectors deals in raw materials</td>
                                                                    <td style="border: medium solid #E6E6E6"><strong>
                                                                        <asp:Label ID="lblsector" runat="server" Text="Label" style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="border: medium solid #E6E6E6; width: 208px; background-color: #FFFFCC;"><strong>
                                                                        <asp:Label ID="Label15" runat="server" BackColor="#FFFFCC" Font-Size="Large" ForeColor="White" style="color: #000000" Text="Importers" Width="140px"></asp:Label>
                                                                        </strong></td>
                                                                    <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Importers that import raw materials</td>
                                                                    <td style="border: medium solid #E6E6E6"><strong>
                                                                        <asp:Label ID="lblimporte" runat="server" Text="Label" style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="border: medium solid #E6E6E6; width: 208px; background-color: #00FFCC;"><strong>
                                                                        <asp:Label ID="Label17" runat="server" BorderColor="White" Font-Size="Large" ForeColor="White" style="background-color: #66FFCC" Text="Supply Location" Width="220px"></asp:Label>
                                                                        </strong></td>
                                                                    <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Country of supply</td>
                                                                    <td style="border: medium solid #E6E6E6"><strong>
                                                                        <asp:Label ID="lblscountry" runat="server" Text="Label" style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="border: medium solid #E6E6E6; width: 208px;"><strong>
                                                                        <asp:Label ID="Label16" runat="server" BorderColor="#00FF99" CssClass="label-default" Font-Size="Large" ForeColor="White" style="color: #000000" Text="Origine Location" Width="231px"></asp:Label>
                                                                        </strong></td>
                                                                    <td style="border: medium solid #E6E6E6; width: 371px; font-size: small;">Number of Country of origine</td>
                                                                    <td style="border: medium solid #E6E6E6"><strong>
                                                                        <asp:Label ID="lblocountry" runat="server" Text="Label" style="font-size: medium; color: #000000;" ForeColor="Black"></asp:Label>
                                                                        </strong></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 2px; margin: 2px; height: 20px; vertical-align: middle;" class="label-default">
                                                            &nbsp;</td>
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
                                                <asp:Label ID="lblmsg" runat="server" ForeColor="Black" style="color: #000000"></asp:Label>
                                            </td>
                </tr>
            </table>
        </td>
        <td style="vertical-align: top">
            <table style="width: 100%; height: 1237px;">
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                                &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">
                                                &nbsp;</td>
                    <td>
                                                &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                            &nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                                &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                                &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                                &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                                                &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="vertical-align: top">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="vertical-align: top">
            &nbsp;</td>
    </tr>
</table>

   

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    
    <%--<asp:Button ID="btnShowPopup" runat="server" Text="Show Popup"  />--%>
    <div id="dialog" style="display: none"> 
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="OnPageIndexChanging"
            PageSize="10" AllowPaging="true" HeaderStyle-Wrap="False">
            <Columns>
                <asp:BoundField DataField="HS4" HeaderText="HS4 CODE" ItemStyle-Width="80" >
<ItemStyle Width="80px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="HS4_Name" HeaderText="HS4 NAME" ItemStyle-Width="150" >
                
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                
            </Columns>

<HeaderStyle Wrap="False" Font-Names="Times New Roman" Font-Size="Small"></HeaderStyle>

            <RowStyle Width="200px" Wrap="False" Font-Size="Small" />
        </asp:GridView>
    </div>

    <div id="dialog1" style="display: none"> 
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="OnPageIndexChanging1"
            PageSize="10" AllowPaging="true" HeaderStyle-Wrap="False">
            <Columns>
                <asp:BoundField DataField="HS10" HeaderText="HS10 CODE" ItemStyle-Width="80" >
<ItemStyle Width="80px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CommodityName" HeaderText="COMMODITY NAME" ItemStyle-Width="150" >
                
<ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                
            </Columns>

<HeaderStyle Wrap="False" Font-Names="Times New Roman" Font-Size="Small"></HeaderStyle>

            <RowStyle Width="200px" Wrap="False" Font-Size="Small" />
        </asp:GridView>
    </div>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id*=btnShowPopup2]").click(function () {
                ShowPopup2();
                return false;
            });
        });
        function ShowPopup2() {
            $("#dialog1").dialog({
                title: "Details Composition of Selected Raw Material & Product",
                width: 650,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                },
                modal: true
            });
        }
   </script>

    <script type="text/javascript">
        $(function () {
            $("[id*=btnShowPopup]").click(function () {
                ShowPopup();
                return false;
            });
        });       
        function ShowPopup() {
            $("#dialog").dialog({
                title: "Details Composition of Selected Raw Material & Product",
                width: 650,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                },
                modal: true
            });         
            
        }
    </script>
   

</asp:Content>





