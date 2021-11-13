<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="width: 173px; vertical-align: top;">&nbsp;</td>
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
                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Welcome  Mr./Mrs "></asp:Label>
                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" style="color: #000000; font-size: small;" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center" style="border-right: thin solid #000000; vertical-align: top; width: 255px;">
                                                    <table style="width: 100%; height: 612px;">
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td colspan="2" style="border-top: thin solid #CCCCCC; border-bottom: thin solid #CCCCCC; font-size: large; border: thin groove #CCCCCC;"><strong><em>Dashboard Menue</em></strong></td>
                                                        </tr>
                                                        <tr style="border-top-style: groove; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC; border-left-style: solid; border-left-width: thin; border-left-color: #CCCCCC;">
                                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/rnped.jpg" Height="26px" Width="33px" AlternateText="Raw Materials &amp; Products" PostBackUrl="~/main.aspx" />
                                                            </td>
                                                            <td class="text-left" style="border-top-style: solid; border-top-width: thin; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #CCCCCC">
                                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/main.aspx">Home</asp:HyperLink>
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
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; background-color: #FFFFFF; height: 200px; vertical-align: middle;" class="text-center" colspan="2">
                                                                <table align="center" style="border: medium solid #E6E6E6; width: 97%; height: 215px; background-color: #FFFFFF; vertical-align: middle;">
                                                                    <tbody class="text-center">
                                                                        <tr>
                                                                            <td style="border: medium solid #CCCCCC;">
                                                                                                                <table align="center" class="text-muted" style="width: 96%; height: 103px; background-color: #FF3300">
                                                                                                                    <tr>
                                                                                                                        <td style="padding: 2px; margin: 2px; width: 20px;">
                                                                                                                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/infored.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                                        </td>
                                                                                                                        <td style="padding: 2px; margin: 2px" class="text-center">
                                                                                                                            <asp:Label ID="lblhs2code" runat="server" Text="Label" style="font-size: x-large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                                            <br />&nbsp;
                                                                                                                            </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="2" style="padding: 2px; margin: 2px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF;" class="text-center">
                                                                                                                            <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/hs2code.aspx" style="font-size: small">HS2 CODE</asp:HyperLink>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                                </td>
                                                                            <td style="border: medium solid #CCCCCC">
                                                                                                                <table align="center" style="width: 101%; height: 88px; background-color: #66CCFF">
                                                                                                                    <tr>
                                                                                                                        <td style="padding: 2px; margin: 2px">
                                                                                                                            <table style="width: 100%; height: 99px;">
                                                                                                                                <tr>
                                                                                                                                    <td style="width: 20px" class="text-muted">
                                                                                                                                        <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/images/infoblueed.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                                                    </td>
                                                                                                                                    <td class="text-center"><strong>
                                                                                                                                        <asp:Label ID="lblhs4code" runat="server" Text="Label" style="font-size: x-large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                                                        <br class="text-muted" /></strong></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td colspan="2" style="border-top: thin solid #FFFFFF; text-align: center;" class="text-muted"><strong>
                                                                                                                                        <span class="text-muted"><span style="font-size: small">
                                                                                                                                        <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="White" NavigateUrl="~/hs4code.aspx">HS4 CODE</asp:HyperLink>
                                                                                                                                        </span></span>
                                                                                                                                        </strong></td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="border: medium solid #CCCCCC;">
                                                                                                                <table align="center" style="width: 96%; height: 68px; background-color: #FFFFCC">
                                                                                                                    <tr>
                                                                                                                        <td style="padding: 2px; margin: 2px">
                                                                                                                            <table style="width: 100%; height: 101px;">
                                                                                                                                <tr>
                                                                                                                                    <td style="width: 20px; height: 49px;">
                                                                                                                                        <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/images/yellowinfoed.jpg" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                                                    </td>
                                                                                                                                    <td style="height: 49px; color: #666666; width: 120px; vertical-align: top;" class="text-center"><strong>
                                                                                                                                        <asp:Label ID="lblhs10code" runat="server" Text="Label" style="font-size: x-large; color: #666666;" ForeColor="#666666" CssClass="text-muted"></asp:Label>
                                                                                                                                        </strong></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td colspan="2" style="border-top: thin solid #FFFFFF; color: #666666;" class="text-center"><strong>
                                                                                                                                        <span style="color: #666666">
                                                                                                                                        <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Black" style="font-size: small" NavigateUrl="~/hs10code.aspx">HS10 CODE</asp:HyperLink>
                                                                                                                                        </span>
                                                                                                                                        </strong></td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                            <td style="border: medium solid #CCCCCC">
                                                                                                                <table align="center" style="width: 96%; height: 68px; background-color: #00FFCC">
                                                                                                                    <tr>
                                                                                                                        <td style="padding: 2px; margin: 2px">
                                                                                                                            <table style="width: 100%; height: 98px;">
                                                                                                                                <tr>
                                                                                                                                    <td style="width: 19px" class="text-muted">
                                                                                                                                        <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/images/grned.png" Height="41px" Width="33px" AlternateText="Raw Materials &amp; Products" />
                                                                                                                                    </td>
                                                                                                                                    <td class="text-center"><strong>
                                                                                                                                        <asp:Label ID="lblclass" runat="server" Text="Label" style="font-size: x-large" ForeColor="White" CssClass="text-muted"></asp:Label>
                                                                                                                                        </strong></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td colspan="2" style="border-top: thin solid #FFFFFF; text-align: center;" class="text-muted"><strong>
                                                                                                                                        <span class="text-muted">
                                                                                                                                        <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="White" style="font-size: small" NavigateUrl="~/hs2class.aspx">HS2 RANGES</asp:HyperLink>
                                                                                                                                        </span>
                                                                                                                                        </strong></td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="style9" style="padding: 2px; margin: 2px; border: thin ridge #CCCCCC; text-align: left; background-color: #DDDDDD; height: 650px; vertical-align: top; width: 850px;">
                                                    <table style="padding: 6px; margin: 6px; width: 98%; border-spacing: 10px; height: 601px;">
                                                        <tr>
                                                            <td style="padding: 2px; margin: 2px; height: 120px">
                                                                <table align="center" class="label-default" style="width: 97%; height: 213px">
                                                                    <tr>
                                                                        <td class="text-left" style="padding: 4px; margin: 4px; border: medium none #CCCCCC; vertical-align: top;">
                                                                            <table style="padding: 4px; margin: 4px; width: 97%; height: 192px; background-color: #FBFBFB;">
                                                                                <tr>
                                                            <td class="text-center" style="padding: 2px; margin: 2px; background-color: #FFFFFF"><strong>IMPORTED RAW MATERIALS &amp; PRODUCTS DESCRIPTIONS</strong></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #F0F0F0; ">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-center" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #FFFFFF; ">
                                                                <table style="padding: 4px; margin: 4px; width: 98%; height: 25px; font-family: 'Courier New', Courier, monospace; font-size: small;">
                                                                    <tr>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>HS 2(GROUP):</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; width: 211px;">
                                                                            <asp:DropDownList ID="dplgname" runat="server" Height="16px" Width="209px" AutoPostBack="True"  Font-Size="X-Small" DataSourceID="SqlDataSource1" DataTextField="CommodityGroupName" DataValueField="CommodityGroupName">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [CommodityGroupName] FROM [CommodityGroup] ORDER BY [CommodityGroupName]"></asp:SqlDataSource>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>YEAR :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <asp:DropDownList ID="dplyear" runat="server" Height="16px" Width="209px" AutoPostBack="True" Font-Size="X-Small" DataSourceID="SqlDataSource7" DataTextField="Year_R" DataValueField="Year_R">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [Year_R] FROM [CommodityDataSummary] WHERE (([HS2_Name] = @HS2_Name) AND ([HS4_Name] = @HS4_Name) AND ([CommodityName] = @CommodityName) AND ([SupplyCountry] = @SupplyCountry)) ORDER BY [Year_R]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplcomname" Name="CommodityName" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplsc" Name="SupplyCountry" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>HS 4(CLASS) :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; width: 211px;">
                                                                            <asp:DropDownList ID="dplccname" runat="server" Height="16px" Width="209px" AutoPostBack="True" Font-Size="X-Small" DataSourceID="SqlDataSource3" DataTextField="HS4_Name" DataValueField="HS4_Name">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [HS4_Name] FROM [CommodityDataSummary] WHERE ([HS2_Name] = @HS2_Name) ORDER BY [HS4_Name]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>IMPORTER :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <asp:DropDownList ID="dplimporter" runat="server" Height="16px" Width="209px" AutoPostBack="True"  Font-Size="X-Small" DataSourceID="SqlDataSource8" DataTextField="Importer" DataValueField="Importer">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [Importer] FROM [CommodityDataSummary] WHERE (([HS2_Name] = @HS2_Name) AND ([HS4_Name] = @HS4_Name) AND ([CommodityName] = @CommodityName) AND ([SupplyCountry] = @SupplyCountry) AND ([Year_R] = @Year_R)) ORDER BY [Importer]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplcomname" Name="CommodityName" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplsc" Name="SupplyCountry" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplyear" Name="Year_R" PropertyName="SelectedValue" Type="Int32" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; height: 26px;" class="text-right"><strong>HS 10(COMMODITY):</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; width: 211px; height: 26px;">
                                                                            <asp:DropDownList ID="dplcomname" runat="server" Height="16px" Width="209px" AutoPostBack="True" Font-Size="X-Small" DataSourceID="SqlDataSource5" DataTextField="CommodityName" DataValueField="CommodityName" >
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [CommodityName] FROM [CommodityDataSummary] WHERE (([HS4_Name] = @HS4_Name) AND ([HS2_Name] = @HS2_Name)) ORDER BY [CommodityName]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; height: 26px;" class="text-right"><strong>SECTOR :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; height: 26px;">
                                                                            <asp:DropDownList ID="dplsector" runat="server" Height="16px" Width="209px" Font-Size="X-Small">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>SUPPLY COUNTRY :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF; width: 211px;">
                                                                            <asp:DropDownList ID="dplsc" runat="server" Height="16px" Width="209px" AutoPostBack="True"  Font-Size="X-Small" DataSourceID="SqlDataSource6" DataTextField="SupplyCountry" DataValueField="SupplyCountry">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [SupplyCountry] FROM [CommodityDataSummary] WHERE (([CommodityName] = @CommodityName) AND ([HS4_Name] = @HS4_Name) AND ([HS2_Name] = @HS2_Name)) ORDER BY [SupplyCountry]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplcomname" Name="CommodityName" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;" class="text-right"><strong>ORIGINE COUNTRY :</strong></td>
                                                                        <td style="padding: 4px; margin: 4px; background-color: #FFFFFF;">
                                                                            <asp:DropDownList ID="dploc" runat="server" Height="16px" Width="209px" AutoPostBack="True" Font-Size="X-Small" DataSourceID="SqlDataSource9" DataTextField="OriginCountry" DataValueField="OriginCountry">
                                                                            </asp:DropDownList>
                                                                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [OriginCountry] FROM [CommodityDataSummary] WHERE (([HS2_Name] = @HS2_Name) AND ([HS4_Name] = @HS4_Name) AND ([CommodityName] = @CommodityName) AND ([SupplyCountry] = @SupplyCountry) AND ([Year_R] = @Year_R) AND ([Importer] = @Importer)) ORDER BY [OriginCountry]">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="dplgname" Name="HS2_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplcomname" Name="CommodityName" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplsc" Name="SupplyCountry" PropertyName="SelectedValue" Type="String" />
                                                                                    <asp:ControlParameter ControlID="dplyear" Name="Year_R" PropertyName="SelectedValue" Type="Int32" />
                                                                                    <asp:ControlParameter ControlID="dplimporter" Name="Importer" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-left" style="border: thin groove #FFFFFF; padding: 2px; margin: 2px; background-color: #FFFFFF; ">
                                    <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Size="Small" Height="36px" onclick="btnlogin_Click" Text="Search" Width="210px" CssClass="btn-lg" BackColor="#666666" BorderColor="#666666" ForeColor="White" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="text-center" style="height: 250px; vertical-align: top;">&nbsp;
                                                                                        <table class="label-default" style="width: 97%; height: 215px">
                                                                                            <tr>
                                                                                                <td style="width: 301px" class="text-left"><strong>&nbsp;&nbsp; Searhed Raw Material &amp; Product Details</strong></td>
                                                                                                
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding: 4px; margin: 4px; background-color: #CCCCCC;" colspan="2">
                                                                                                    <table style="width: 101%; height: 450px;">
                                                                                                        <tr>
                                                                                                            <td class="label-default" style="vertical-align: top; width: 500px; background-color: #FFFFFF;">
                                                                                                
                                                                                                                <asp:Label ID="lbltest" runat="server" Text="Label"></asp:Label>
                                                                                                                <br />
                                                                                                                <asp:TextBox ID="txttest" runat="server"></asp:TextBox>
                                                                                                
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
                                                                <asp:DropDownList ID="dplgid" runat="server" AutoPostBack="True" Height="16px" Width="16px" DataSourceID="SqlDataSource2" DataTextField="CommodityGroupCode" DataValueField="CommodityGroupCode" BackColor="White">
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT [CommodityGroupCode] FROM [CommodityGroup] WHERE ([CommodityGroupName] = @CommodityGroupName)">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="dplgname" Name="CommodityGroupName" PropertyName="SelectedValue" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                                <asp:DropDownList ID="dplcid" runat="server" AutoPostBack="True" Width="16px" DataSourceID="SqlDataSource4" DataTextField="HS4" DataValueField="HS4" Height="16px" BackColor="White" >
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT [HS4] FROM [CommodityDataSummary] WHERE ([HS4_Name] = @HS4_Name)">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="dplccname" Name="HS4_Name" PropertyName="SelectedValue" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                                <asp:DropDownList ID="dplcomid" runat="server" AutoPostBack="True" Width="16px" Height="16px" BackColor="White" >
                                                                </asp:DropDownList>
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




