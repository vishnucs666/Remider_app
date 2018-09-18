using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "View";
        //readreminders();
        if (!IsPostBack)
        {

            //Session["lvl"] = "0";
            if(Session["lvl"]== "0")
            {
                readtodayreminders();

            }
            else
            {
                readreminders();
            }


            
          

        }
    }

    private void readtodayreminders()
    {
        string todaydate = DateTime.Now.ToString("MM/dd/yyyy");
        db_connection.con();
        DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter("spoperations", db_connection.db);
        adt1.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt1.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 4;
        adt1.SelectCommand.Parameters.Add("@edate", SqlDbType.VarChar).Value = todaydate;
        adt1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {

            DataList1.DataSource = dt1;
            DataList1.DataBind();

        }
    }

    private void readreminders()
    {

        db_connection.con();
        DataTable dt = new DataTable();
        SqlDataAdapter adt9 = new SqlDataAdapter("spoperations", db_connection.db);
        adt9.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt9.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 1;
        adt9.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        if (Session["lvl"] == "0")
        {
            readtodayreminders();
            Response.Redirect("View.aspx");

        }
        else
        {
            readreminders();
            Response.Redirect("View.aspx");
        }
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {

        DataList1.EditItemIndex = e.Item.ItemIndex;
        if (Session["lvl"] == "0")
        {
            readtodayreminders();
        

        }
        else
        {
            readreminders();
           
        }
    
     
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {

        TextBox txtdate;
        txtdate = (TextBox)e.Item.FindControl("txtdate");
        TextBox txtname;
        txtname = (TextBox)e.Item.FindControl("txtname");
        TextBox txtstarttime;
        txtstarttime = (TextBox)e.Item.FindControl("txtstarttime");      
        TextBox txtendtime;
        txtendtime = (TextBox)e.Item.FindControl("txtendtime");
        TextBox txtloc;
        txtloc = (TextBox)e.Item.FindControl("txtloc");
        int keyid = (int)DataList1.DataKeys[(int)e.Item.ItemIndex];
        db_connection.con();
        DataTable dt = new DataTable();
        SqlDataAdapter adp1 = new SqlDataAdapter("spoperations", db_connection.db);
        adp1.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp1.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 3;
        adp1.SelectCommand.Parameters.Add("@eid", SqlDbType.Int).Value = keyid.ToString() ;
        adp1.SelectCommand.Parameters.Add("@name", SqlDbType.VarChar).Value = txtname.Text;
        adp1.SelectCommand.Parameters.Add("@edate", SqlDbType.VarChar).Value = txtdate.Text;
        adp1.SelectCommand.Parameters.Add("@starttime", SqlDbType.VarChar).Value = txtstarttime.Text;
        adp1.SelectCommand.Parameters.Add("@endtime", SqlDbType.VarChar).Value = txtendtime.Text;
        adp1.SelectCommand.Parameters.Add("@loc", SqlDbType.VarChar).Value = txtloc.Text;
        adp1.Fill(dt);
        DataList1.EditItemIndex = -1;

        if (Session["lvl"] == "0")
        {
            readtodayreminders();
            Response.Redirect("View.aspx");
        }
        else
        {
            readreminders();
            Response.Redirect("View.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "delete")
        {

            Session["cid"] = e.CommandArgument.ToString();

            db_connection.con();
            DataTable dt2 = new DataTable();

            SqlDataAdapter adp = new SqlDataAdapter("spoperations", db_connection.db);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 2;
            adp.SelectCommand.Parameters.Add("@eid", SqlDbType.Int).Value = Session["cid"];
            adp.Fill(dt2);
            if (Session["lvl"] == "0")
            {
                readtodayreminders();
                Response.Redirect("View.aspx");

            }
            else
            {
                readreminders();
                Response.Redirect("View.aspx");
            }

        } 
    }
}