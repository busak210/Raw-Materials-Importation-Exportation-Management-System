using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class search : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Text = Session["username"].ToString();
       

        if (!this.IsPostBack)
        {
            //popGrid();
            pophs2codestxt();
            pophs4codestxt();
            poplblhs10code();
            poplbltax();
            poplblimporter();
            poplblclass();
            poplblsector();
            poplblocountry();
            poplblscountry();
           // popGrid2();

        }

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

    //protected void Button2_Click(object sender, EventArgs e)
    //{

    //    try
    //    {
    //        gridView.Visible = true;
    //        gridView0.Visible = false;
    //        c = new Connect();
    //        c.shola();
    //        c.com.CommandText = "SELECT RegNo,Name,Date_Registered,Outstanding,Phone,Email FROM QS where Name LIKE '%" + txtname.Text.ToString().Trim() + "%'";
    //        c.adapt.SelectCommand = c.com;
    //        c.adapt.Fill(c.ds);
    //        gridView.DataSource = c.ds;
    //        gridView.DataBind();
    //    }

    //    catch (Exception me)
    //    {
    //        lblmsg.Text = me.Message;
    //    }

    //}

    //}



    protected void btnlogin_Click(object sender, EventArgs e)
    {

        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "SELECT [HS2],[HS2_Name],[HS4],[HS4_Name],[HS10],[CommodityName],[Year_R],[Quantity_KG],[Value_N],[Importer],[OriginCountry],[SupplyCountry] FROM [CommodityDataSummary] where [HS2_Name]= '"+ dplgname.Text.ToString().Trim() + "'  and [HS4_Name]='"+ dplccname.Text.ToString().Trim() + "' and [CommodityName]='"+dplcomname.Text.ToString().Trim() + "' and [SupplyCountry]='"+dplsc.Text.ToString().Trim() + "' and [OriginCountry]='"+dploc.Text.ToString().Trim() + "' and [Importer]='"+dplimporter.Text.ToString().Trim() + "' and [Year_R]='"+dplyear.Text.ToString().Trim() + "' ";
            // c.com.CommandText = "spPosition @SchlID,@class,@arm";
            //c.adapt.SelectCommand = c.com;
            // c.adapt.Fill(c.ds1);
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())

            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                lbltest.Text = c.dr["HS2"].ToString();
                txttest.Text = c.dr["HS4"].ToString();
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

}








          