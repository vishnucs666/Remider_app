using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for db_connection
/// </summary>
public class db_connection
{
    public static SqlConnection db;
	public db_connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void con()

    {
        try
        {
            String str = ConfigurationManager.AppSettings["dbcon"];
            db = new SqlConnection(str);
            db.Open();
          
            
        }
        catch (Exception ex)
        {

        }
        //string str = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        //db = new SqlConnection(str);
        //db.Open();
    }
   
}