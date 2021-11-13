using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Connect
/// </summary>
public class Connect
{
    public SqlConnection con;
    public SqlCommand com;
    public SqlDataAdapter adapt;
    public DataSet ds;
    public SqlDataReader dr;

    public void shola()
    {
        con = new SqlConnection("server=localhost; user id=sa; password=sh0la@nassco_123; database = tttt");
        con.Open();
        com = new SqlCommand();
        com.Connection = con;
        adapt = new SqlDataAdapter();
        adapt.SelectCommand = com;
        ds = new DataSet();


    }

    public void CloseConnection()
    {
        con.Close();
    }



}