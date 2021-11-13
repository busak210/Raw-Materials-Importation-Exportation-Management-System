<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hs2Detailspop.aspx.cs" Inherits="hs2Detailspop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    
    <asp:Button ID="btnShowPopup" runat="server" Text="Show Popup" OnClick="btnShowPopup_Click" />
    <div id="dialog" style="display: none"> 
        <asp:GridView ID="t" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="OnPageIndexChanging"
            PageSize="10" AllowPaging="true" HeaderStyle-Wrap="False">
            <Columns>
                <asp:BoundField DataField="HS4" HeaderText="HS4 CODE" ItemStyle-Width="80" >
<ItemStyle Width="80px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="HS4_Name" HeaderText="HS4 Name" ItemStyle-Width="150" >
                
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="HS2_Name" DataValueField="HS2_Name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ttttConnectionString2 %>" SelectCommand="SELECT DISTINCT [HS2_Name] FROM [CommodityDataSummary] ORDER BY [HS2_Name]"></asp:SqlDataSource>
</asp:Content>

