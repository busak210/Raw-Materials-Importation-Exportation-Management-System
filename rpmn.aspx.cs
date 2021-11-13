using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Web.UI.DataVisualization.Charting;

public partial class rpmn : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        if (!Page.IsPostBack)
        {
            popddlgname();
            popddlccname();
            popddlcommname();
            poplblimporter();
            poplblsCountry();
            poplbloCountry();
            poplbltradeV();
            poplbltradeQ();
            poplblnoofyearsinvolve();
           

        }

    }
    //Populate Product Group Dropdownlist
    private void popddlgname()
     {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [HS2_NAME] FROM [CommodityDataGentFinal] ORDER BY [HS2_NAME]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        dplgname.DataTextField = c.ds.Tables[0].Columns["HS2_NAME"].ToString(); // text field name of table dispalyed in dropdown       
        dplgname.DataValueField = c.ds.Tables[0].Columns["HS2_NAME"].ToString();
        // to retrive specific  textfield name   
        dplgname.DataSource = c.ds.Tables[0];      //assigning datasource to the dropdownlist  
        dplgname.DataBind();  //binding dropdownlist  

        dplgname.Items.Insert(0, new ListItem("Please Select one ....", "NA")); //updated code
     }

    //Populate Product Category Dropdownlist
    private void popddlccname()
    {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [HS4_NAME] FROM [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ORDER by [HS4_Name]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        dplccname.DataTextField = c.ds.Tables[0].Columns["HS4_NAME"].ToString(); // text field name of table dispalyed in dropdown       
        dplccname.DataValueField = c.ds.Tables[0].Columns["HS4_NAME"].ToString();
        // to retrive specific  textfield name   
        dplccname.DataSource = c.ds.Tables[0];      //assigning datasource to the dropdownlist  
        dplccname.DataBind();  //binding dropdownlist  

        dplccname.Items.Insert(0, new ListItem("Please Select one ....", "NA")); //updated code
    }

    //Populate Change in Group Dropdownlist
    protected void dplgname_SelectedIndexChanged(object sender, EventArgs e)
    {
        popddlccname();
        poplblimporter();
        poplblsCountry();
        poplbloCountry();
        poplbltradeV();
        poplbltradeQ();
        poplblnoofyearsinvolve();
        popddlfromhs2();
        popddlTohs2();
        


    }

//Populate Products Dropdownlist
private void popddlcommname()
    {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [HS10_NAME] FROM [CommodityDataGentFinal] where [HS4_NAME]='" + dplccname.Text.ToString() + "' ORDER by [HS10_Name]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        dplcomname.DataTextField = c.ds.Tables[0].Columns["HS10_NAME"].ToString(); // text field name of table dispalyed in dropdown       
        dplcomname.DataValueField = c.ds.Tables[0].Columns["HS10_NAME"].ToString();
        // to retrive specific  textfield name   
        dplcomname.DataSource = c.ds.Tables[0];      //assigning datasource to the dropdownlist  
        dplcomname.DataBind();  //binding dropdownlist  

        dplcomname.Items.Insert(0, new ListItem("Please Select one ....", "NA")); //updated code
    }

    protected void dplccname_SelectedIndexChanged(object sender, EventArgs e)
    {
        popddlcommname();

    }

    //Populate Product Importer label for Selected Product Group in statistic board
    public void poplblimporter()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([Importer])) as Totalimporter from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
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

    //Populate Product Supply Country label for Selected Product Group in statistic board
    public void poplblsCountry()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([SupplyCountry])) as TotalsCountry from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblscountry.Text = c.dr["TotalsCountry"].ToString();
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

    //Populate Product Origin Country label for Selected Product Group in statistic board
    public void poplbloCountry()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([OriginCountry])) as TotaloCountry from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lblocountry.Text = c.dr["TotaloCountry"].ToString();
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

    //Populate Product Trade Value label for Selected Product Group in statistic board
    public void poplbltradeV()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT sum(cast([N_Values] as float)) as [Value_N] from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lbltradeV.Text = c.dr["Value_N"].ToString();
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


    //Populate Product Trade Quantity label for Selected Product Group in statistic board
    public void poplbltradeQ()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT sum(cast([Qty] as float)) as [Quantity_KG] from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lbltradeQ.Text = c.dr["Quantity_KG"].ToString();
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

    //Populate Product No. of Years Involved label for Selected Product Group in statistic board
    public void poplblnoofyearsinvolve()
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select count(distinct([N_Year])) as Totalyear from [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lbltyear.Text = c.dr["Totalyear"].ToString();
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

    //Populate ddp Year from in the range
    private void popddlfromhs2()
    {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [N_Year] FROM [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ORDER by [N_Year]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        dplfrom.DataTextField = c.ds.Tables[0].Columns["N_Year"].ToString(); // text field name of table dispalyed in dropdown       
        dplfrom.DataValueField = c.ds.Tables[0].Columns["N_Year"].ToString();
        // to retrive specific  textfield name   
        dplfrom.DataSource = c.ds.Tables[0];      //assigning datasource to the dropdownlist  
        dplfrom.DataBind();  //binding dropdownlist  

        dplfrom.Items.Insert(0, new ListItem("Select Start Year ....", "NA")); //updated code
    }


    //Populate ddp Year To in the range
    private void popddlTohs2()
    {
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT DISTINCT [N_Year] FROM [CommodityDataGentFinal] where [HS2_NAME]='" + dplgname.Text.ToString() + "' ORDER by [N_Year]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        dplTo.DataTextField = c.ds.Tables[0].Columns["N_Year"].ToString(); // text field name of table dispalyed in dropdown       
        dplTo.DataValueField = c.ds.Tables[0].Columns["N_Year"].ToString();
        // to retrive specific  textfield name   
        dplTo.DataSource = c.ds.Tables[0];      //assigning datasource to the dropdownlist  
        dplTo.DataBind();  //binding dropdownlist  

        dplTo.Items.Insert(0, new ListItem("Select End Year ....", "NA")); //updated code
    }

    //Decide on the visiblity of rlduration
    private void popdurationvisi()
    {
        if (rlitems.SelectedItem.Text == "")
        {
           rlduration.Visible = false;
            lblduration.Visible = false;


        }
        
	else
        {
            rlduration.Visible = true;
            lblduration.Visible = true;
            

        }
     }


    //Decide on the visiblity of rllisttrac
    private void poprllisttracvisi()
    {
        if (rlitems.SelectedItem.Text == "Importers' Profile" || rlitems.SelectedItem.Text == "Country of Supply" || rlitems.SelectedItem.Text == "Country of Origin")
        {
            rllisttrac.Visible = true;
            lblformat.Visible = true;




        }

        else
        {
            rllisttrac.Visible = false;
            lblformat.Visible = false;


        }
    }


    //Same as above
    protected void rlitems_SelectedIndexChanged(object sender, EventArgs e)
    {
        popdurationvisi();
        poprllisttracvisi();
    }


    //Populate gridview based on rlitem & rlduration Selected
    private void poprlitemtradeQV()
    {
        if (rlitems.SelectedItem.Text == "Trade Qty & Values" && rlduration.SelectedItem.Text == "Annual")
        {
            
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT [N_Year] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "' ) group by [N_Year]";
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds);
        //MessageBox.Show("Data Fetched");
        GridView2.DataSource = c.ds;
        GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Trade Qty & Values" && rlduration.SelectedItem.Text == "Quarter")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Qter] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Trade Qty & Values" && rlduration.SelectedItem.Text == "Month")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year], [N_Month] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Trade Qty & Values" && rlduration.SelectedItem.Text == "All")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Month],[N_Qter],sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }



    //Populate gridview based on rlitem, rlduration & rllisttrac for Transaction Selected
    private void poprlImportP()
    {
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "Transactions")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year] ,count(distinct [Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Qter] ,count(distinct [Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year], [N_Month] ,count(distinct [Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Month],[N_Qter],count(distinct [Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter]";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }



    //Populate gridview based on rlitem, rlduration & rllisttrac for Transaction Selected
    private void poprlCountyrS()
    {
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "Transactions")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year] ,count(distinct [SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Qter] ,count(distinct [SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between  '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year], [N_Month] ,count(distinct [SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Month],[N_Qter],count(distinct [SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter]";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }



    //Populate gridview based on rlitem, rlduration & rllisttrac for Transaction Selected
    private void poprlCountyrO()
    {
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "Transactions")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year] ,count(distinct [OriginCountry]) as [No of Origin Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Qter] ,count(distinct [OriginCountry]) as [No of Origin Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between  '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year], [N_Month] ,count(distinct [OriginCountry]) as [No of Origin Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month] ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "Transactions")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [N_Year],[N_Month],[N_Qter],count(distinct [OriginCountry]) as [No of Origin Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter]";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }



    //Populate gridview based on rlitem, rlduration & rllisttrac for List Selected
    private void poprlCountyrOl()
    {
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "List")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year] ,[OriginCountry] as [Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], OriginCountry ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Qter] ,[OriginCountry] as [Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between  '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ,OriginCountry";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year], [N_Month] ,[OriginCountry] as [Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month],OriginCountry ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Origin" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Month],[N_Qter],[OriginCountry] as [Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter],OriginCountry";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }




    //Populate gridview based on rlitem, rlduration & rllisttrac for List Selected
    private void poprlImportPL()
    {
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "List")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year] ,[Importer] as [Importers' Names] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], Importer ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Qter] ,[Importer] as [Importers' Names] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between  '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ,Importer";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year], [N_Month] ,[Importer] as [Importers' Names] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month],Importer ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Importers' Profile" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Month],[N_Qter],[Importer] as [Importers' Names] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter],Importer";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }



    //Populate gridview based on rlitem, rlduration & rllisttrac for List Selected
    private void poprlCountyrSL()
    {
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Annual" && rllisttrac.SelectedItem.Text == "List")
        {

            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year] ,[SupplyCountry] as [Country of Supply] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], SupplyCountry ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();


        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Quarter" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Qter] ,[SupplyCountry] as [Country of Supply] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between  '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Qter] ,SupplyCountry";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "Month" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year], [N_Month] ,[SupplyCountry] as [Country of Supply] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year], [N_Month],SupplyCountry ";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        if (rlitems.SelectedItem.Text == "Country of Supply" && rlduration.SelectedItem.Text == "All" && rllisttrac.SelectedItem.Text == "List")
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT distinct [N_Year],[N_Month],[N_Qter],[SupplyCountry] as [Country of Supply] FROM [CommodityDataGentFinal] where ([HS2_NAME]='" + dplgname.Text.ToString() + "') and ([N_Year] between '" + dplfrom.Text.ToString() + "' and '" + dplTo.Text.ToString() + "') group by [N_Year],[N_Month],[N_Qter],SupplyCountry";
            c.adapt.SelectCommand = c.com;
            c.adapt.Fill(c.ds);
            //MessageBox.Show("Data Fetched");
            GridView2.DataSource = c.ds;
            GridView2.DataBind();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";

        }
    }

    //Call the function immediate above
    protected void btngetrec_Click(object sender, EventArgs e)
    {
       
            poprlitemtradeQV();
            poprlImportP();
            poprlCountyrS();
            poprlCountyrO();
            poprlCountyrOl();
            poprlCountyrSL();
            poprlImportPL();


    }
}