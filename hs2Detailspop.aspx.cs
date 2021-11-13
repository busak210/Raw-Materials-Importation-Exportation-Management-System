using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;


public partial class hs2Detailspop : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    private void BindGrid()
    {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [HS4],[HS4_Name] from [CommodityDataSummary] where [HS2_Name]='"+DropDownList1.Text.ToString().Trim()+"'";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        t.DataSource = c.ds;
        t.DataBind();

    }

    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        t.PageIndex = e.NewPageIndex;
        this.BindGrid();
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);
    }

    protected void btnShowPopup_Click(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
        BindGrid();
    }
}