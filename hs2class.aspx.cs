using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

public partial class hs2class : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Text = Session["username"].ToString();

        pssbchart();


        if (!this.IsPostBack)
        {
            popGrid();
            pophs2codestxt();
            pophs4codestxt();
            poplblhs10code();
            poplbltax();
            poplblimporter();
            poplblclass();
            poplblsector();
            poplblocountry();
            poplblscountry();
            popGrid2();

        }
    }




    private void popGrid2()
    {

        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT Distinct CommoditClassCode ,[CommodityClassName] FROM [CommodityClass] ORDER by CommodityClassName";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        GridView2.DataSource = c.ds;
        GridView2.DataBind();


    }



    private void popGrid()
    {

        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT [Year_R] ,sum(cast([Quantity_KG] as float)) as [Quantity_KG] ,sum(cast([Value_N] as float)) as [Value_N] FROM [CommodityDataSummary] group by [Year_R]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        GridView1.DataSource = c.ds;
        GridView1.DataBind();


    }



    private void pssbchart()
    {

        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT [Year_R] ,sum(cast([Quantity_KG] as float)) as [Quantity_KG] ,sum(cast([Value_N] as float)) as [Value_N] FROM [CommodityDataSummary] group by [Year_R]";
        SqlDataReader newOdbcReader = c.com.ExecuteReader();
        myChart.Series["Categories"].XValueMember = "Quantity_KG";
        myChart.Series["Categories"].YValueMembers = "Year_R";



        // myChart.DataBindTable(newOdbcReader, "State");

        myChart.DataSource = newOdbcReader;
        myChart.DataBind();

        newOdbcReader.Close();

        c.con.Close();

    }


    public void pophs2codestxt()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "select count(Distinct([CommodityGroupCode])) as TotalHS2 from [CommodityGroup]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblhs2code.Text = c.dr["TotalHS2"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }

    public void pophs4codestxt()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "select count(Distinct([CommodityCategoryCode])) as TotalHS4 from [CommodityCategory]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblhs4code.Text = c.dr["TotalHS4"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplbltax()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select  (sum([Tax])) as TotalTax from [CommodityData]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lbltax.Text = c.dr["TotalTax"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplblimporter()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([Importer])) as Totalimporter from [CommodityData]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblimporte.Text = c.dr["Totalimporter"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplblhs10code()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(Distinct([CommodityCode])) as HS10Code from [Commodity]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblhs10code.Text = c.dr["HS10Code"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }

    public void poplblclass()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "select count(Distinct([CommoditClassCode])) as TotalClass from [CommodityClass]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblclass.Text = c.dr["TotalClass"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplblsector()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([CommoditySectorId])) as Totalsector from [CommoditySectors]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblsector.Text = c.dr["Totalsector"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplblocountry()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([CountryId])) as Totalocountry from [CommodityData]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblocountry.Text = c.dr["Totalocountry"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }


    public void poplblscountry()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([SupplyCountryId])) as Totalscountry from [CommodityData]";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblscountry.Text = c.dr["Totalscountry"].ToString();
            }
            else
            {
                lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        popGrid2dpl();
        //pssbchartdpl();
        //popGriddpl();



    }



    ///Populate based on dropdown selection
    private void popGrid2dpl()
    {

        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT Distinct [CommoditClassCode] ,[CommodityClassName] FROM [CommodityClass] where CommodityClassName='" + DropDownList1.Text.ToString() + "' ORDER by [CommodityClassName]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        GridView2.DataSource = c.ds;
        GridView2.DataBind();


    }



    //private void popGriddpl()
    //{

    //    c = new Connect();
    //    c.shola();
    //    c.com.CommandText = "SELECT [Year_R] ,sum(cast([Quantity_KG] as float)) as [Quantity_KG] ,sum(cast([Value_N] as float)) as [Value_N] FROM [CommodityDataSummary] where CommodityClassName='" + DropDownList1.Text.ToString() + "' group by [Year_R]";
    //    c.adapt.SelectCommand = c.com;
    //    c.adapt.Fill(c.ds);
    //    //MessageBox.Show("Data Fetched");
    //    GridView1.DataSource = c.ds;
    //    GridView1.DataBind();


    //}



    //private void pssbchartdpl()
    //{
    //    c = new Connect();
    //    c.shola();
    //    c.com.CommandText = "SELECT [Year_R] ,sum(cast([Quantity_KG] as float)) as [Quantity_KG] ,sum(cast([Value_N] as float)) as [Value_N] FROM [CommodityDataSummary] where  CommodityClassName='" + DropDownList1.Text.ToString() + "'  group by [Year_R]";
    //    SqlDataReader newOdbcReader = c.com.ExecuteReader();
    //    myChart.Series["Categories"].XValueMember = "Quantity_KG";
    //    myChart.Series["Categories"].YValueMembers = "Year_R";


    //    // myChart.DataBindTable(newOdbcReader, "State");

    //    myChart.DataSource = newOdbcReader;
    //    myChart.DataBind();

    //    newOdbcReader.Close();

    //    c.con.Close();

    //}
}